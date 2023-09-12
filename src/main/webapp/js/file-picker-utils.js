

export class FilePickerAPI {

    static async getFilePicker() {
        const client = await filestack.init(FILE_STACK_API);
        const options = {
            fromSources: ["local_file_system", "url"],
            transformations: {
                crop: { aspectRatio: 1 / 1, force: true },
            },
            imageMin: [200, 200],
            imageMax: [200, 200],
            onFileUploadFinished: file => {
                console.log(file);

            }
        };
        client.picker(options).open();
    }
}