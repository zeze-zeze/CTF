<?php
    function encode($input){ 
        $inputlen = strlen($input);
		$randkey = rand(1, 9); 
		$i = 0;
		while ($i < $inputlen) {
			$inputchr[$i] = (ord($input[$i]) - $randkey);
			$i++; 
		}
		$encrypted = implode('.', $inputchr) . '.' . (ord($randkey)+49);
		return $encrypted;
    }
	echo(encode("radar{}"));
	?>