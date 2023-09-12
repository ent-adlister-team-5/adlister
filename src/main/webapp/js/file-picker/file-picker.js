import {FilePickerAPI} from "./file-picker-utils.js";

(() => {

    console.log("inside file-picker.js")

    const clickBtn = document.querySelector("#upload-image");

    clickBtn.addEventListener("click", async(e) =>  {
        console.log("inside upload-image event listener")
        e.preventDefault();
        const filePickerObject = await FilePickerAPI.getFilePicker();
        console.log(filePickerObject);

    });


}) ();