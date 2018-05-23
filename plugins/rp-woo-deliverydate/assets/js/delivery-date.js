(function ($) {
    $(document).ready(function ($) {
        var displayTimePicker = (parseInt(RPODD.displayTimepicker) === 1) ? true : false;
        $.datetimepicker.setLocale(RPODD.language);
        $('#delivery_datetime').datetimepicker({
            format: RPODD_getDateFormate(RPODD.dtFormat, RPODD.tFormat, displayTimePicker),
            timepicker: displayTimePicker,
            disabledWeekDays: RPODD.hideWeekDays,
            allowTimes: RPODD_getAllowTime(RPODD.curMinHours, RPODD.curMaxHour),
            minDate: RPODD.minDt2,
            disabledDates: RPODD_getDisabledDates(RPODD.hideDates, RPODD.hideRange),
            formatDate: 'Y-m-j',
            theme: RPODD.theme,
            onSelectDate: function (ct,$input) {
                hours=ct.getHours();
                this.setOptions({
                    allowTimes: RPODD_getAllowTime(RPODD.minHours[ct.getDay()], RPODD.maxHour[ct.getDay()])
                });
                if(hours<RPODD.minHours[ct.getDay()] || hours>RPODD.maxHour[ct.getDay()]){
                    ct.setHours(RPODD.minHours[ct.getDay()]);
                    dateHelper = new DateFormatter();
                    keydate=dateHelper.formatDate(ct,RPODD_getDateFormate(RPODD.dtFormat, RPODD.tFormat, displayTimePicker));
                    $input.val(keydate);
                }
            }
        });
    });
})(jQuery);

function RPODD_getAllowTimesForDay(ct) {
    alert(ct.getDay());
}
function RPODD_getDisabledDates(hideDate, hideRange) {
    var disableDates = [];
    if (hideDate.length > 0) {
        for (dt = 0; dt < hideDate.length; dt++) {
            disableDates.push(hideDate[dt]);
        }
    }
    var monthArr = {"0": "01", "1": "02", "2": "03", "3": "04", "4": "05", "5": "06", "6": "07", "7": "08", "8": "09", "9": "10", "10": "11", "11": "12"}
    if (hideRange.length > 0) {
        for (dt = 0; dt < hideRange.length; dt++) {
            fromDate = hideRange[dt].form;
            fromDate = fromDate.split("-");
            fromDate = new Date(fromDate[0], fromDate[1] - 1, fromDate[2]);

            toDate = hideRange[dt].to;
            toDate = toDate.split("-");
            toDate = new Date(toDate[0], toDate[1] - 1, toDate[2]);
            //alert(speDate+"\n"+date.getTime());
            while (fromDate.getTime() < toDate.getTime()) {
                disableDates.push(fromDate.getFullYear() + "-" + monthArr[fromDate.getMonth()] + "-" + fromDate.getDate());
                fromDate.setDate(fromDate.getDate() + 1);
            }

        }

    }
    return disableDates;
}
function RPODD_getAllowTime(minTime, maxTime) {
    minTime = parseInt(minTime);
    maxTime = parseInt(maxTime);
    if (minTime >= maxTime) {
        minTime = 0;
    }
    allowTime = [];
    for (var time = minTime; time <= maxTime; time++) {
        var strTime = time + ":00";
        allowTime.push(strTime.toString());
    }
    return allowTime;
}
function RPODD_getDateFormate(dateFormat, timeFormat, displayTimepicker) {
    var newformat = dateFormat;
    var newTimeformate = timeFormat;
    var objDate = {dd: 'd', mm: 'm', yy: 'Y', d: 'j', m: 'n'};
    var objTime = {HH: 'H', hh: 'h', mm: 'i', H: 'G', h: 'g', m: 'i', TT: 'A'};
    for (var key in objDate) {
        if (dateFormat.indexOf('dd') != -1 && key == 'd') {
            continue;
        }
        if (dateFormat.indexOf('mm') != -1 && key == 'm') {
            continue;
        }
        newformat = newformat.replace(key, objDate[key]);
    }

    if (timeFormat != "" && displayTimepicker === true) {
        for (var key in objTime) {
            if (timeFormat.indexOf('HH:') != -1 && key == 'H') {
                continue;
            }
            if (timeFormat.indexOf('hh') != -1 && key == 'h') {
                continue;
            }
            if (timeFormat.indexOf('mm') != -1 && key == 'm') {
                continue;
            }
            newTimeformate = newTimeformate.replace(key, objTime[key]);
        }
        newformat = newformat + " " + newTimeformate
    }

    return newformat;
}