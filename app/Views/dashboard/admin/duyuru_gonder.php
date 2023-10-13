<!-- views/layout/admin_template.php dosyasının içeriği -->

<?= $this->extend('layout/admin_template') ?>
<?= $this->section('content') ?>

<div class="content-wrapper container">
    <style>
        /* CSS ile active başlığı özelleştirin */
        .list-group-item.active {
            background-color: #007bff;
            color: #fff;
            border-color: #007bff;
        }

        /* Duyuru Sil butonunun stilini özelleştirin */
        .delete-duyuru-btn {
            background-color: #dc3545;
            color: #fff;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
        }
    </style>
<button id="openModalButton" class="btn btn-primary">Duyuru Ekle</button>

    <div class="row message-wrapper rounded">
        <div class="col-md-4 message-sideleft">
            <div class="panel">
                <div class="panel-heading">
                    <div class="pull-left ml-3 mt-3">
                        <h3 class="panel-title">Duyurular</h3>
                    </div>
                </div>
                <div class="panel-body no-padding">
                    <div class="list-group no-margin list-message">
                        <?php foreach ($duyurular as $duyuru): ?>
                            <a href="#" class="list-group-item" data-duyuru="<?= $duyuru['duyuru_metni']; ?>" data-duyuru-id="<?= $duyuru['duyuru_id']; ?>">
                                <h4 class="list-group-item-heading"><?= $duyuru['duyuru_basligi']; ?>
                                    <button class="delete-duyuru-btn float-right" data-duyuru-id="<?= $duyuru['duyuru_id']; ?>">Sil</button>
                                </h4>
                            </a>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6 message-sideright mt-5 bg-white">
            <div class="panel" id="duyuruDetayPanel">
                <div class="panel-heading">
                    <div class="media">
                        <a class="pull-left" href="#"></a>
                        <h5>
                            <div class="panel-body " id="duyuruDetayIcerik">

                            </div>
                        </h5>
                        <div class="media-body">
                            <div class="row">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div>
           
    </div>

    </div>    </div>

    <div id="duyuruModal" class="modal">
        <div class="modal-content">
            <span class="close" id="closeModal">&times;</span>
            <h2>Duyuru Ekle</h2>
            <form method="post" action="<?= base_url('duyuru_post'); ?>">
                <label for="baslik">Duyuru Başlığı:</label>
                <input type="text" id="baslik" name="baslik">
                <br>
                <label for="mesaj">Duyuru Metni:</label>
                <textarea id="mesaj" name="mesaj" rows="4" cols="50"></textarea>
                <br>
                <button class="btn btn-primary" type="submit">Duyuru Gönder</button>
            </form>
        </div>
    </div>

<script>
    $(document).ready(function () {
        $(".list-group-item").click(function () {
            $(".list-group-item").removeClass("active");
            var duyuruMetni = $(this).data("duyuru");
            var duyuruId = $(this).data("duyuru-id");
            $("#duyuruDetayIcerik").html(duyuruMetni);
            $(this).addClass("active");
        });

        $(".delete-duyuru-btn").click(function () {
            var duyuruId = $(this).data("duyuru-id");
            if (confirm("Duyuruyu silmek istediğinizden emin misiniz?")) {
                $.ajax({
                    type: "POST",
                    url: "<?= base_url('/duyurugonder/delete/') ?>" + duyuruId,
                    success: function (response) {
                        if (response.success) {
                            location.reload();
                        } else {
                            location.reload();
                        }
                    },
                    
                });
            }
        });

          $("#openModalButton").click(function () {
        $("#duyuruModal").show();
    });

    // Close the modal when the close button is clicked
    $("#closeModal").click(function () {
        $("#duyuruModal").hide();
    });
    });
</script>

<?= $this->endSection('content') ?>
