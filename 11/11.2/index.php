<?php
    $boolean = true;
    $integer = -224;
    $float = 112.23;
    echo ('Привіт всім');
    $str_double = "Людям";
    $str_heredoc = <<<EOD
     Привіт, $str_double. Це приклад рядка,
     що охоплює декілька рядків,
     з використанням heredoc-синтаксису.
EOD;
    $str_nowdoc = <<<'EOD'
     Привіт, $str_double. Це приклад рядка,
     що охоплює декілька рядків,
     з використанням heredoc-синтаксису.
EOD;
