<egg>
  <img src="img/{ eggImage }.png">

  <div>
    <div class="Cooktime">
      <div style="width:{ Cooktime }%;">&nbsp;</div>
    </div>
    <p>Boiling for: { Cooktime } min</p>
  </div>

  <button onclick={ boil }>Boil</button>
  <button onclick={ reset }>Restart</button>

  <script>
    //make a copy of my egg and call it that
    var that = this;

    //initial state
    this.Cooktime = 0;
    this.eggImage = "raw";

    startCooking() {
      console.log(this.Cooktime);
      this.Cooktime = this.Cooktime + 1 > 12
        ? 12
        : this.Cooktime + 1;
    }

    restartCooking() {
      console.log(this.Cooktime);
      this.Cooktime = 0;
    }

    checkStatus() {
      if (this.Cooktime >= 8 && this.Cooktime <= 12) {
        this.eggImage = "hard";
      } else if (this.Cooktime > 4 && this.Cooktime < 8) {
        this.eggImage = "medium";
      } else if (this.Cooktime >= 3 && this.Cooktime <= 4) {
        this.eggImage = "soft";
      } else
      {
          this.eggImage = "raw";
        }
      }

    // functions that respond to events
    boil(e) {
      this.startCooking();
      this.checkStatus();
    }
    reset(e) {
      this.restartCooking();
      this.checkStatus();
    }

  </script>

  <style>
    :scope {
      margin: auto;
    }

    img {
      weight: auto;
      height: 200px;
    }
  </style>
</egg>
