

export class FilePickerAPI {

    static async getFilePicker() {
        const client = await filestack.init(FILE_STACK_API);
        const options = {
            fromSources: ["local_file_system", "url"],
        };
        client.picker(options).open();
    }
}