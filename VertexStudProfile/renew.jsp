<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>VertexStudyPoint</title>
    <link rel="stylesheet" href="CSS/ragistartion.css" />
    <script>
      function memChoice()
      {
          var ch = document.getElementById("m_name").value;
          
          if(ch=="Recomendade")
          {
            document.getElementById("m_facility").value="Only Tea/Coffee,Biscuits 3 Times a Day";
            document.getElementById("amt").value=400;
          }
          else if(ch=="Basic")
          {
            document.getElementById("m_facility").value="No Food, Only Ragistration Fee";
            document.getElementById("amt").value=300;
          }
          else if(ch=="Premium")
          {
            document.getElementById("m_facility").value="Lunch, Only Tea/Coffee 2 Times a Day";
            document.getElementById("amt").value=500;
          }
          else if(ch=="Pro")
          {
            document.getElementById("m_facility").value="Dinner, Only Tea/Coffee,2 Times a Day";
            document.getElementById("amt").value=600;
          }
          else if(ch=="Best")
          {
            document.getElementById("m_facility").value="Breakfast Only Tea/Coffee, 3 Times a Day";
            document.getElementById("amt").value=450;
          }
      };

function handleDate(){
let inpDate="",normalDate="",strDate="",endDate="";
   setTimeout(() => {
      inpDate = document.getElementById("startDate").value;
      normalDate = new Date(inpDate);
      endDate=normalDate.setDate((normalDate.getDate() + 30));
      let d = (new Date(endDate)).toLocaleDateString();
      var arr = d.split('/');

if(arr[0]<10)
{
  arr[0]="0"+arr[0];
}
if(arr[1]<10)
{
  arr[1]="0"+arr[1];
}
      strDate = arr[2]+"-"+arr[0]+"-"+arr[1];
      document.getElementById("endDate").value=strDate; 
   }, 5000)
}

    </script>
  </head>
  <body>
    <section class="container">
      <header><b>Membership Renewal</b></header>
      <form action="renew1.jsp" method="get" class="form">

        <div class="input-box">
            <label>Email :</label>
            <input type="email" placeholder="Enter Your mail" name="fname" required />
        </div>
          <br>

          <div class="column">
              <label>Choose Membership</label>
                  <div class="select-box">
                    <select name="m_name" id="m_name" onclick="memChoice()">
                      <option hidden>membership</option>
                      <option value="Recomendade">Recommended</option>
                      <option value="Basic">Basic</option>
                      <option value="Premium">Premium</option>
                      <option value="Pro">Pro</option>
                      <option value="Best">Best</option>
                    </select>
                  </div>
            </div>
            <div class="input-box">
                <label>Membership Facility</label>
                    <input type="text" id="m_facility"  name="m_facility" readonly required/>
                </div>
      
      
      <div class="column">
          <div class="input-box">
            <label>StartDate</label>
            <input type="date" placeholder="date" name="startDate" id="startDate" onclick="handleDate()" required />
          </div>
          <div class="input-box">
              <label>EndDate</label>
              <input type="date" placeholder="date" id="endDate" name="endDate" readonly required />
            </div>
      </div>
      
          <div class="column">
              <div class="input-box">
                <label>Amount</label>
                <input type="text" placeholder="" id="amt" name="amt" readonly required />
              </div>
              <div class="input-box">
                  <label>Phone no</label>
                  <input type="tel" placeholder="phoneno" name="pno" pattern="[789][0-9]{9}" required />
                </div>
          </div>
      
      <br><br><button>Proceed To Payment</button>
      </form>
    </section>
  </body>
</html>