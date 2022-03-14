*** Settings ***
Documentation   Dokumentasi teknikal sebagai test QA Engineer Skyshi
Resource        resource.robot
Suite Setup     Open Browser Chrome
Suite Teardown  Close Browser


*** Test Case ***
Menampilkan halaman utama
    [Documentation]    Test verifikasi menampilkan data utama
    [Tags]    Fungsional, Card Acivity
    Buka halaman website todo list app
    Berhsil menampilkan header title
    Berhasil menampilkan title activity
    Berhasil menampilkan button tambah

Menambahkan data activity
    [Documentation]    Test verifikasi menambah data card activity
    [Tags]    Fungsional, Card Acivity
    Buka halaman website todo list app
    Berhsil menampilkan header title
    Berhasil menampilkan title activity
    Klik button tambah activity
    Berhasil menambah data baru new activity

Menghapus activity
    [Documentation]    Test verifikasi menghapus data card activity
    [Tags]    Fungsional, Card Acivity
    Buka halaman website todo list app
    Berhsil menampilkan header title
    Berhasil menampilkan title activity
    Klik button tambah activity
    Berhasil menambah data baru new activity
    Klik icon hapus
    Menmapilkan popup konfirmasi hapus data
    Klik tombol hapus
    Berhasil menghapus data activity 

Menampilkan detail activity
    [Documentation]    Test verifikasi menampilkan detail card activity
    [Tags]    Fungsional, Detail Card Acivity
    Buka halaman website todo list app
    Berhsil menampilkan header title
    Berhasil menampilkan title activity
    Klik activity card yang sudah dibuat
    Menampilkan empty state

Mengganti title todo
    [Documentation]    Test verifikasi mengubah title card
    [Tags]    Fungsional, Detail Card Acivity
    Buka halaman website todo list app
    Berhsil menampilkan header title
    Berhasil menampilkan title activity
    Klik activity card yang sudah dibuat
    Klik icon edit title
    Masukkan nama title baru
    Klik button back

Menambahkan beberapa item prioritas todo
    [Documentation]    Test verifikasi menambahkan 5 list item priority
    [Tags]    Fungsional, Detail Card Acivity
    Buka halaman website todo list app
    Berhsil menampilkan header title
    Berhasil menampilkan title activity
    Klik activity card yang sudah dibuat
    Menampilkan empty state

    Klik button tambah items
    Tambahkan nama list item priority very high
    Pilih priority very high
    Klik button simpan items

    Klik button tambah items
    Tambahkan nama list item priority high
    Pilih priority high
    Klik button simpan items
    
    Klik button tambah items
    Tambahkan nama list item priority medium
    Pilih priority medium
    Klik button simpan items

    Klik button tambah items
    Tambahkan nama list item priority low
    Pilih priority low
    Klik button simpan items

    Klik button tambah items
    Tambahkan nama list item priority very low
    Pilih priority very low
    Klik button simpan items


Men-sortir item todo
    [Documentation]    Test verifikasi mensortir item list todo
    [Tags]    Fungsional, Detail Card Acivity
    Buka halaman website todo list app
    Berhsil menampilkan header title
    Berhasil menampilkan title activity
    Klik activity card yang sudah dibuat
    Klik icon sortir dan menampilkan list sort
    Klik icon sortir dan menampilkan sort terlama
    Klik icon sortir dan menampilkan sort A-Z
    Klik icon sortir dan menampilkan sort Z-A

Menandai selesai item todo
    [Documentation]    Test verifikasi checklist list item todo yang sudah selesai
    [Tags]    Fungsional, Detail Card Acivity
    Buka halaman website todo list app
    Berhsil menampilkan header title
    Berhasil menampilkan title activity
    Klik activity card yang sudah dibuat
    Checklist item todo yang sudah selesai
    Klik icon sortir belum selesai dan menampilkan list item belum selesai

Menghapus item todo
    [Documentation]    Test verifikasi menghapus list items todo
    [Tags]    Fungsional, Detail Card Acivity
    Buka halaman website todo list app
    Berhsil menampilkan header title
    Berhasil menampilkan title activity
    Klik activity card yang sudah dibuat
    Klik icon hapus item
    Menmapilkan popup konfirmasi hapus data
    Klik tombol hapus