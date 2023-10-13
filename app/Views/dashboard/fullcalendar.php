<?= $this->extend('layout/admin_template') ?>
<?= $this->section('content') ?>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

    <!--fullcalendar plugin files -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.js"></script>
    
    <!-- for plugin notification -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

  
<div class="container">
    <h3 style="text-align: center">Etkinlik Takvimi</h3>
    <div id="calendar"></div>
</div>
   

<?= $this->endSection('content') ?>

<?= $this->section('pageSpecificScript') ?>
<script>
 
$(document).ready(function() {


    var calendar = $('#calendar').fullCalendar({
        editable: true,
        events:  "<?= base_url('event') ?>" ,
        displayEventTime: false,
        editable: true,
        eventRender: function(event, element, view) {
            if (event.allDay === 'true') {
                event.allDay = true;
            } else {
                event.allDay = false;
            }
        },
        selectable: true,
        selectHelper: true,
        select: function(start, end, allDay) {

            var title = prompt('Etkinlik:');

            if (title) {
                var start = $.fullCalendar.formatDate(start, "Y-MM-DD");
                var end = $.fullCalendar.formatDate(end, "Y-MM-DD");
                $.ajax({
                    url:" <?= base_url('eventAjax') ?>",
                    data: {
                        title: title,
                        start: start,
                        end: end,
                        type: 'add'
                    },
                    type: "POST",
                    success: function(data) {
                        displayMessage("Etkinlik Başarıyla Eklendi");

                        calendar.fullCalendar('renderEvent', {
                            id: data.id,
                            title: title,
                            start: start,
                            end: end,
                            allDay: allDay
                        }, true);

                        calendar.fullCalendar('unselect');
                    }
                });
            }
        },

        eventDrop: function(event, delta) {
            var start = $.fullCalendar.formatDate(event.start, "Y-MM-DD");
            var end = $.fullCalendar.formatDate(event.end, "Y-MM-DD");

            $.ajax({
                url: "<?= base_url('eventAjax') ?>",
                data: {
                    title: event.title,
                    start: start,
                    end: end,
                    id: event.id,
                    type: 'update'
                },
                type: "POST",
                success: function(response) {

                    displayMessage("Etkinlik Başarıyla Güncellendi");
                }
            });
        },
        eventClick: function(event) {
            var deleteMsg = confirm("Etkinliği silmek istiyor musunuz?");
            if (deleteMsg) {
                $.ajax({
                    type: "POST",
                    url: "<?= base_url('eventAjax') ?>",
                    data: {
                        id: event.id,
                        type: 'delete'
                    },
                    success: function(response) {

                        calendar.fullCalendar('removeEvents', event.id);
                        displayMessage("Etkinlik Başarıyla Silindi");
                    }
                });
            }
        }

    });

});

function displayMessage(message) {
    toastr.success(message, 'Event');
}
</script>

  <?= $this->endSection('pageSpecificScript') ?>
