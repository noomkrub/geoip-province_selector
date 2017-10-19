# geoip-province_selector
**Sample here**
https://e-activist.com/ea-action/action?ea.client.id=1827&ea.campaign.id=39037&ea.campaign.mode=DEMO

Note: this demo require https access to www.greenpeace.or.th  In case nothing happen please check https security exception. The server has issue with ssl certificate.

**Overall idea**
Once user select country then province field(region field in EN system) load province list of selected country.
If there is only one province then make it selected by default. 
User can then select province of their choice this will send correct format of value to store in system after they submit form.

**How?**
Create form in EN using standard country and region field. Both field must be “select” type which will render as drop down list in web browser. Country value should be added to form using selection value like this https://docs.google.com/document/d/1JYkKbNsybNzsJzGD13v-Rj-J4LGOwYRtoOBWofy7YyI/edit

Add following script to HTML 
```
<!-- code for detect country selection then list province/state accordingly -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
function getprovince(c_id){
	var url='https://www.greenpeace.or.th/noom/world_province/index.php?m=province&country_code='+c_id ;
	$.ajax({
  		url:  url,
  		dataType: 'jsonp',
  		success: function (data) {
  			//console.log(data);
  			$('#region').empty();
  			$('#region').append( $('<option></option>').val('').html('Please select') );   
			for (var key in data) {
  				if (data.hasOwnProperty(key)) {
  					$('#region').append( $('<option></option>').val(key).html(data[key]) );        
  					}
				}
  			}  
		});
	}
</script>

<script>
$( document ).ready(function() {
	$('#country').on('change', function() {
		var select_country=$('#country').val();
		getprovince(select_country);
		});
});
</script>
<!-- end script to add -->
```


OR 

Add “other copy” name “ALL.world.region.list.by.country” (This one is in GPSEA account)
to somewhere after region field.

That’s it

Note: As of  2nd June 2015. There is some conflict on automatic country selector(geoip) and this dynamic province selector. Please be aware when use it together. It is now work in progress to solve this problem and make them able to run together smoothly.(Fixed : August 2015)


**Need more explanation on how it work??**
OK. 
First, after web page loaded and finish render it will do. 
add event listener to country field in signup form. 
Monitor change of country field. If there is some change happen it will 
Load province/state list from server according to country selected and put it to region option. Using jsonp protocol.(This is only protocol able to send across domain: as far as I know)
Replace “region” field with province loaded from server. 


Want to implement to your own server?

Document here


Update 18 august
To make use of this province selector together with automatic country selector just add following script to before end body tag in html template together with copy block
```
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/themes/smoothness/jquery-ui.css" />

<script  type="text/javascript">
function getcountry(){
$.ajax({
  url: '//www.greenpeace.or.th/noom/geoip/geoip.php',
  dataType: "jsonp",
  success: function (data) {
  $('#country').val(data.country);
  getprovince(data.country);
  }
});}
</script>

<script>
jQuery(document).ready(function($) {

        getcountry();
	$( "#date_of_birth" ).datepicker({
	changeMonth: true,
	changeYear: true,
	dateFormat: 'yy-mm-dd',
	yearRange: "-100:+0"
	});

});
</script>
```
