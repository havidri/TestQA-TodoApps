*** Settings ***
Library            SeleniumLibrary
Variables          locator.py

*** Keywords ***
Open Browser Chrome
    Open Browser                    browser=Chrome
    Maximize Browser Window

Buka halaman website todo list app
    Go To                            https://todo-4769a.web.app/                
    # Go To                            https://todo-devcode.web.app/              
    # Go To                            https://ivan-todo-devrank.netlify.app/     

Berhsil menampilkan header title
    Element Should Be Visible                ${HeaderTitle}
    Element Should Contain                   ${HeaderTitle}        TO DO LIST APP

Berhasil menampilkan title activity
    Element Should Be Visible                ${TitleActivity}
    Element Should Contain                   ${TitleActivity}       Activity

Berhasil menampilkan button tambah
    Element Should Be Visible                ${AddButtonVisible}

Klik button tambah activity
    Wait Until Element Is Visible            ${AddButtonVisible}
    Click Element                            ${AddButtonVisible}

Berhasil menambah data baru new activity
    Wait Until Element Is Visible            ${NewActivityisVisible}
    Sleep                                    3
    Element Should Be Visible                ${NewActivityisVisible}

Klik icon hapus
    Wait Until Element Is Visible            ${DeleteActivity}
    Click Element                            ${DeleteActivity}

Menmapilkan popup konfirmasi hapus data
    Wait Until Element Is Visible           ${PopupDelete} 
    Element Should Be Visible               ${PopupDelete} 

Klik tombol hapus
    Click Element                            ${BtnDelete}

Berhasil menghapus data activity 
    Wait Until Element Is Visible            ${SuccessDelete}
    Element Should Be Visible                ${SuccessDelete}

Klik activity card yang sudah dibuat
    Wait Until Element Is Visible            ${ActivityAction}
    Click Element                            ${ActivityAction}

Menampilkan empty state
    Wait Until Element Is Visible            ${EmptyState}
    Element Should Be Visible                ${EmptyState}

Klik icon edit title
    Wait Until Element Is Visible            ${BtnEditTitle}
    Click Element                            ${BtnEditTitle}
    Sleep    10

Masukkan nama title baru
    Input Text                               ${InputTitle}            Title Baru
    Sleep                                    3

Klik button back
    Click Element                            ${btnBack}

Berhasil mengubah dan menampilkan title todo terbaru
    Wait Until Element Is Visible            ${NewActivityisVisible}
    Element Should Contain                   ${NewActivityisVisible}              Title Baru

Klik button tambah items
    Click Element                            ${AddListItem}

Tambahkan nama list item priority very high
    Input Text                                ${inputListName}        List Priority Very High
    # Input Text                                id:AddFormTitle       List Priority Very High
    Sleep    3

Tambahkan nama list item priority high
    Wait Until Element Is Visible             ${inputListName}  
    Input Text                                ${inputListName}         List Priority High

Tambahkan nama list item priority medium
    Wait Until Element Is Visible             ${inputListName} 
    Input Text                                ${inputListName}         List Priority Medium

Tambahkan nama list item priority low
    Wait Until Element Is Visible             ${inputListName}  
    Input Text                                ${inputListName}         List Priority Low

Tambahkan nama list item priority very low
    Wait Until Element Is Visible             ${inputListName}  
    Input Text                                ${inputListName}         List Priority Very Low

Pilih priority very high
    Click Element                            ${DropdownListPriority}
    Click Element                            ${VeryHighPriority}

Pilih priority high
    Click Element                            ${DropdownListPriority}
    Click Element                            ${HighPriority}

Pilih priority medium
    Click Element                            ${DropdownListPriority}
    Click Element                            ${MediumPriority}

Pilih priority low
    Click Element                            ${DropdownListPriority}
    Click Element                            ${LowPriority}

Pilih priority very low
    Click Element                            ${DropdownListPriority}
    Click Element                            ${VeryLowPriority}

Klik button simpan items
    Wait Until Element Is Visible            ${btnSaveItemList}
    Click Element                            ${btnSaveItemList}

Klik icon sortir dan menampilkan list sort
    Wait Until Element Is Visible            ${btnSortList}
    Click Element                            ${btnSortList}

Klik icon sortir dan menampilkan sort terlama
    Wait Until Element Is Visible            ${btnSortList}
    Click Element                            ${SortTerlama}

Klik icon sortir dan menampilkan sort A-Z
    Wait Until Element Is Visible            ${btnSortList}
    Click Element                            ${btnSortList}
    Click Element                            ${SortA_Z}

Klik icon sortir dan menampilkan sort Z-A
    Wait Until Element Is Visible            ${btnSortList}
    Click Element                            ${btnSortList}
    Click Element                            ${SortZ_A}

Checklist item todo yang sudah selesai
    Wait Until Element Is Visible            ${TodoListSelesai}
    Click Element                            ${TodoListSelesai}

Klik icon sortir belum selesai dan menampilkan list item belum selesai
    Wait Until Element Is Visible            ${btnSortList}
    Click Element                            ${btnSortList}
    Click Element                            ${SortBelumSelesai}

 Klik icon hapus item
    Wait Until Element Is Visible            ${DeleteItemList}
    Click Element                            ${DeleteItemList}

Menampilkan popup item berhasil dihapus
    Wait Until Element Is Visible            ${PupupSuccessDelete}