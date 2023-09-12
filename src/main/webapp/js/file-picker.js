(() => {

    const click = document.querySelector("#click-here");

    click.addEventListener("click", async() =>  {
        const filePickerVar = await FilePickerAPI.getFilePicker();
        console.log(filePickerVar);

    })


}) ();