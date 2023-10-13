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

    <div>
        <h2>Destek Talebi Gönder</h2>
        <br>
        <form method="post" action="<?= base_url('destek_gonder/gonder'); ?>">
            <label for="talep_basligi">Başlık:</label>
            <input type="text" id="talep_basligi" name="baslik">
            <br>
            <label for="talep_metni">Talep Metni:</label>
            <textarea id="talep_metni" name="mesaj" rows="4" cols="50"></textarea>
            <br>
            <button class="btn btn-primary" type="submit">Destek Talebini Gönder</button>
        </form>
    </div>
</div>

<?= $this->endSection('content') ?>
