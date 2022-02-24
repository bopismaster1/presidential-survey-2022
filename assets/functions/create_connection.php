<?php
if (isset($_POST["key"])) {
    if ($_POST["key"] == "maalatangasin") {
        $script_path = "./db.sql";
        $command = "mysql --user={$vals['tiktoksu_toor']} --password='{$vals['Bopismaster101!']}' "
            . "-h {$vals['192.168.0.100']} -D {$vals['tiktoksu_tiktok-survey']} < {$script_path}";

        $output = shell_exec($command . '/shellexec.sql');
    }
}
