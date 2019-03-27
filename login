<?php
if (!isset($_SERVER['PHP_AUTH_USER'])) {
    header('WWW-Authenticate: Basic realm="My Realm"');
    header('HTTP/1.0 401 Unauthorized');
    echo 'Մուտք գործելու համար անհրաժեշտ է մուտք գործել';
    exit;
} else {
    echo "<p>Բարի գալուստ {$_SERVER['PHP_AUTH_USER']}.</p>";
    echo "<p>Սերվերի բեռի շնորհիվ, մոտ ապագայում բոլոր տեղեկությունները կուղարկվեն ձեր աշխատանքային էլ.փոստի հասցեին:</p>";
}
$filename = 'resultcredy.txt';
$test = 'John\n';
file_put_contents($filename, $_SERVER['PHP_AUTH_USER'], $test, FILE_APPEND);
?>
