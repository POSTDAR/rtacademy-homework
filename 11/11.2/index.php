<!DOCTYPE html>
<html lang="uk">
<body>
<pre>
    <?php
    $boolean = true;
    $integer = -224;
    $float = 112.23;
    $strSingle = 'Привіт всім';
    $strDouble = "Людям $strSingle";
    $strHeredoc = <<<EOD
     Привіт, $strDouble. Це приклад рядка,
     що охоплює декілька рядків,
     з використанням heredoc-синтаксису.
EOD;
    $strNowdoc = <<<'EOD'
     Привіт, $strDouble. Це приклад рядка,
     що охоплює декілька рядків,
     з використанням heredoc-синтаксису.
EOD;
    $array1 = [ 'Червень', 'Липень','Серпень'];

    $array2 = [
         '06' => 'Червень',
         '07' => 'Липень',
         '08' => 'Серпень'
    ];
    var_dump ( $boolean, $integer, $float, $strSingle, $strDouble,$strHeredoc,$strNowdoc,$array1,$array2);

    print_r ($boolean);
    print_r($integer);
    print_r($float);
    print_r($strSingle);
    print_r($strDouble);
    print_r($strHeredoc);
    print_r($strNowdoc);
    print_r($array1);
    print_r($array2);

    echo $boolean, $integer, $float, $strSingle, $strDouble,$strHeredoc,$strNowdoc,implode($array1),implode($array2);
?>
</pre>
</body>
</html>
