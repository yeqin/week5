<parent-child>
	<div class="eggshare">
		<!-- ref or reference attribute is a quick way to "bookmark" an element so we can quickly access it in javascript later. -->
		<!-- E.g. HTML <img ref="xxx"/> -->
		<!-- E.g. JS this.refs.xxx points to the img tag prior -->
<h3>The Egg Collection</h3>
  	<input type="text" ref="url" placeholder="Enter URL">
		<input type="text" ref="caption" placeholder="Enter Caption">
		<button type="button" onclick={ addegg }>Share Your Egg Picture!</button>
	</div>
<br></br>
	<child each={ eggshare }>
	</child>

	<script>
		console.log(this);

		this.eggshare = [
		{
			url: "https://media1.s-nbcnews.com/j/newscms/2015_42/818291/bacon-soft-boiled-egg-toast-today-151014-cover_922b5bb8fae32e8a3336787994cb6deb.today-inline-large.jpg",
			caption: "Bacon and Soft-Boiled Egg Toast" },

		];

		var that  =  this;

		this.remove = function(event) {
			console.log('EVENT:', event);
			var useregg = event.item;
			var index = that.eggshare.indexOf(useregg);
			that.eggshare.splice(index, 1);

			that.update();
		};

		this.addegg = function(event) {
			console.log(event);
			var url = this.refs.urlEl.value;
			var caption = this.refs.captionEl.value;
			var egg = { url: url, caption: caption };
			this.eggshare.push(egg);
			this.refs.captionEl.value = "";
		};
	</script>

	<style>
		:scope {
			display: block;
			background: #f9e4c5 ;
			padding: 15px;
		}
		img {
			width: 60%;
		}
	</style>

</parent-child>
