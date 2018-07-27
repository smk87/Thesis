<? 
require_once ('class.loading.div.php');
$divLoader = new loadingDiv;
?>

Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content 
Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content 
Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content 
Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content 
Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content 
Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content 
Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content 
Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content 
Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content 
Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content 
Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content 
Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content 
Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content



<? $divLoader->loader();

		echo str_pad('',1024);  // minimum start for Safari
		
		for ($i=7; $i>0; $i--) {
			
			echo str_pad("$i<br>\n",8);
			// tag after text for Safari & Firefox
			// 8 char minimum for Firefox
			sleep(1);
			
			$divLoader->loaderFlush();
		}
		
	

echo ('<br /><br /><br />MORE CONTENT DISPLAYED!');
?>