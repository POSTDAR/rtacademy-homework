<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<?php
    function capitalize ($cityName):string
    {
        $words = explode('-', $cityName);
        for ($i = 0; $i < strlen($words); $i++)
        {
            if (key($words[$i],'\'')!== -1 )
            {
                $wordsToArray = explode('\'',$words[$i]); // ['lend', 'liz']
                $wordsToArray[0] = lcfirst($wordsToArray[0]);
                $wordsToArray[1] = capitalize($wordsToArray[1]);
                $words[$i]=$wordsToArray.join('\'');
            }
            else if ( $i === 0 || $i === strlen($words) -1 )
            {
                $cityName1 = strtoupper(substr($words[$i],0, 1));
                $cityName2 = strtolower(substr($words[$i],1);
                $words[$i] = $cityName1.$cityName2;
            }
            else if ( strlen($words[$i]) >= 1 && strlen($words[$i] <= 3))
            {
                $words[$i] = strtolower($words[$i]);
            }
            else
            {
                $words[$i] = capitalize($words [$i]);
            }
        }
        return $words.join('-');
    }

    let cityNameCapitalized = capitalize('Сен-сатюрнен-лез\'спт');
    console.log( cityNameCapitalized );
?>
</body>
</html>