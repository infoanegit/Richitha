<cfoutput>
    <html lang="en">
        <head>
            <title>Bootstrap 5 Example</title>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
            <link href="./assets/css/datecolours.css" rel="stylesheet">
        </head>

        <cfset currentDate = now()>
        <cfset currentYear = year(currentDate)>
        <cfset currentMonth = month(currentDate)>
        <cfset currentMonthInWords = dateFormat(currentDate, "mmmm")>
            <cfloop condition="DayOfWeek(currentDate) neq 4">
        <cfset currentDate = DateAdd("d", -1, currentDate)>
        <cfset lastDayOfMonth = dateAdd("m", 1, createDateTime(year(currentDate), month(currentDate), 1, 0, 0, 0))>
        <cfset lastDayOfMonth = dateAdd("d", -1, lastDayOfMonth)>
        <cfset lastdayOfMonthInWords = dateFormat(lastDayOfMonth, "dddd")>
            </cfloop>

    <body>
        <div class="bg-color p-5">
            <div class="container-fluid   text-center w-50 mt-3">
                <div class="row bg-warning p-3">
                    <div class="col">
                        <h1>Date Functions</h1>
                    </div>
                </div>
                <div class="row bg-light p-3">
                    <div class="col">
                        <h5 class="pt-2">Today date: <span class="text-primary">#dateFormat(now(), "dd/mm/yyyy")#</span></h5>
                        <h5 class="pt-2">Current Month in numeric: <span class="text-primary"> #currentMonth#</span></h5>
                        <h5 class="pt-2">Current Month in word: <span class="text-primary">#currentMonthInWords#</span></h5>
                        <h5 class="pt-2">Last Wednesday date: <span class="text-primary">#DateFormat(currentDate, "dd-mm-yyyy")#</span></h5>
                        <h5 class="pt-2">Last day of Current Month: <span class="text-primary">#lastdayOfMonthInWords#</span></h5>
                    </div>
                </div>
                <div class="row bg-dark p-3 mt-3 ">
                    <div class="col mb-3">
                        <h2 class="text-info mb-3">Last 5 dates & days</h2>
                            <cfset currentDate = Now()>
                            <cfset colors = ["green","blue", "orange","yellow","red"]>
                            <cfset lastFiveDays = []>
                                    <cfloop index="i" from="1" to="5">
                                        <cfset lastDay = DateAdd("d", -i, currentDate)>
                                        <cfset arrayAppend(lastFiveDays, lastDay)>
                                    </cfloop>
                                    <cfloop array="#lastFiveDays#" index="day">
                                    <cfset color = colors[dayOfWeek(day)]>
                                <p style="color: #color#; font-size:20px;">#DateFormat(day, "dd-mm-yyyy")# - #DateFormat(day, "dddd")#</p>
                            </cfloop>
                        </div>
                    </div>
                </div>
            </div>
        </body>
    </html>
</cfoutput>