<eggtimer>

  <h3>The Egg Timer</h3>
  <p>Your Egg has been boiled for:</p>
  <h2>
    <span id="minutes"></span>:<span id="seconds"></span></h2>
    <button onclick="stopCounter()">Stop</button>
    <button onclick="window.location.reload()">Reset</button>

  <script>
    var sec = 0;
    function myCounter(val) {
      return val > 9
        ? val
        : "0" + val;
    }
    var setIntValue =  setInterval(function () {
      document.getElementById("seconds").innerHTML = myCounter(++sec % 60);
      document.getElementById("minutes").innerHTML = myCounter(parseInt(sec / 60, 10));
    }, 1000);

    function stopCounter() {
    clearInterval(setIntValue);
    }

  </script>

  <style>
    :scope {
      display: block;
      background: #99CED3;
      padding: 15px;
      text-align: center;
    }
  </style>
</eggtimer>
