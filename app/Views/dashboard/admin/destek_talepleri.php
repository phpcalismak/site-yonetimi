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

        /* talep Sil butonunun stilini özelleştirin */
        .delete-talep-btn {
            background-color: #dc3545;
            color: #fff;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
        }
    </style>

    <div class="row message-wrapper rounded">
        <div class="col-md-4 message-sideleft">
            <div class="panel">
                <div class="panel-heading">
                    <div class="pull-left ml-3 mt-3">
                        <h3 class="panel-title">Destek Talepleri</h3>
                    </div>
                </div>
                <div class="panel-body no-padding">
                    <div class="list-group no-margin list-message">
                        <?php foreach ($talepler as $talep): ?>
                            <a href="#" class="list-group-item" data-talep="<?= $talep['talep_metni']; ?>" data-talep-id="<?= $talep['talep_id']; ?>">
                                <h4 class="list-group-item-heading"><?= $talep['talep_basligi']; ?>
                                    <button class="delete-talep-btn float-right" data-talep-id="<?= $talep['talep_id']; ?>">Sil</button>
                                </h4>
                            </a>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6 message-sideright mt-5 bg-white">
            <div class="panel" id="talepDetayPanel">
                <div class="panel-heading">
                    <div class="media">
                        <a class="pull-left" ></a>
                        <h5>
                            <div class="panel-body " id="talepDetayIcerik">

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
        
         
        
    </div>
</div>

<script>
    $(document).ready(function () {
        $(".list-group-item").click(function () {
            $(".list-group-item").removeClass("active");
            var talepMetni = $(this).data("talep");
            var talepId = $(this).data("talep-id");
            $("#talepDetayIcerik").html(talepMetni);
            $(this).addClass("active");
        });

        $(".delete-talep-btn").click(function () {
            var talepId = $(this).data("talep-id");
            if (confirm("talebi silmek istediğinizden emin misiniz?")) {
                $.ajax({
                    type: "POST",
                    url: "<?= base_url('/destek_talepleri/delete/') ?>" + talepId,
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
    });
</script>

<?= $this->endSection('content') ?>
