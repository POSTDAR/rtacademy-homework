<?php
function processUploadedFile(
    string $name, int $max_size = 10485760) : array
{
    if( empty( $_FILES[$name] ) )
    {
        return [
            'error' => 'Помилка. Необхідно завантажити файл.',
            'success' => false
        ];
    }
    if( $_FILES[$name]['error'] !== UPLOAD_ERR_OK )
    {
        return [
            'error' => 'Сталася помилка під час завантаження файлу.',
            'success' => false
        ];
    }
    $valid_mimetypes = [ 'image/jpeg' ];
    // TODO: png, gif
    if( !in_array( $_FILES[$name]['type'], $valid_mimetypes ) )
    {
        return [
            'error' => 'Помилка. Файл повинен мати формат JPEG.' ,
            'success' => false
        ];
    }
    // перевірка на розмір файлу
    if( $_FILES[$name]['size'] > $max_size )
    {
        return [
            'error' => "Помилка. Файл повинен бути менше $max_size байт." ,
            'success' => false
        ];
    }

    return [
        'file_path' => $_FILES[$name]['tmp_name'],
        'success' => true
    ];
}

function cropAndResizeImage (string $file_path, int $min_width = 500, int $min_height = 500):array
{
    $image_source = imagecreatefromstring(file_get_contents($file_path));
    $image_width = imagesx( $image_source ); // визначаємо ширину зображення в пікселях
    $image_height = imagesy( $image_source ); // визначаємо висоту зображення в пікселях
    $min_side_size = min( $image_width, $image_height ); // знаходимо меншу сторону зображення

    if( $image_width < $min_width )
    {
        return [
            'error' => "Помилка. Файл повинен бути більший $min_width px за шириною." ,
            'success' => false
        ];
    }

    if( $image_height < $min_height )
    {
        return [
            'error' => "Помилка. Файл повинен бути більший $min_height px за висотою." ,
            'success' => false
        ];
    }

// вирізаємо квадрат від лівого верхнього кута зображення і сторонами $min_side_size px
    $image_result = imagecrop(
        $image_source,
        [ 'x' => 0, 'y' => 0, 'width' => $min_side_size, 'height' => $min_side_size ]
    );

    if( $image_result === false ) // перевірка на успішне завершення
    {
        imagedestroy( $image_source );

        return [
            'error' => "....." ,
            'success' => false
        ];
    }

    $new_path = './data/' . microtime(true) . '_cropped.jpg';
    imagejpeg( $image_result, $new_path ); // зберігаємо з новим ім'ям у форматі JPEG
    imagedestroy( $image_result ); // звільняємо пам'ять, зайняту обрізаним зображенням
    imagedestroy( $image_source );

    return [
        'new_path' => $new_path,
        'success' => true
    ];
}

$new_path = '';
$error_message = '';

if(!empty($_FILES) && !empty($_POST) )
{
    $result = processUploadedFile( 'userfile' );

    if ($result['success']=== true)
    {
        $result = cropAndResizeImage($result['file_path']);

        if ($result['success']=== true)
        {
            $new_path = $result['new_path'];
        }
        else
        {
            $error_message = $result['error'];
        }
    }
    else
    {
        $error_message = $result['error'];
    }
}

?>
<!DOCTYPE html>
<html lang="uk">
<head>
    <meta charset="utf-8">
    <title>Форма для завантаження зображення</title>
</head>
<body>
<main>
    <?php

    if(empty($new_path))
    {
        if( !empty($error_message))
        {
            echo( '<div class="error">' . $error_message . '</div>' );
        }
        ?>
        <form enctype="multipart/form-data" method="POST">
            <input type="hidden" name="MAX_FILE_SIZE" value="10485760" />
            Файл: <input name="userfile" type="file" />
            <button type="submit">Надіслати</button>
        </form>
    <?php
    }
    else
    {
        echo('<img src="' . $new_path . '" />');
    }
    ?>
</main>
</body>
</html>
