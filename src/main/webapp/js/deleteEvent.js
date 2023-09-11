(() => {
    console.log(`hello from deleteEvent`);

    document.addEventListener("DOMContentLoaded", () => {



    /** Variables */
    const deleteLinks = document.querySelectorAll(".delete-link");
    const modal = document.querySelector("#deleteConfirmationModal");
    const confirmBtn = document.querySelector("#confirmDeleteBtn");
    const cancelBtn = document.querySelector("#cancelDeleteBtn");
    const adTitleElement = document.querySelector("#adTitle");

    /** To store & access the ad.id value for the add to be deleted */
    let adIdToDelete;
    /** To access the ad.title value for the add we want to display in modal */
    let adTitleToDelete;

    /** Event listeners and assignments for each modal interaction */

    deleteLinks.forEach((deleteLink) => {
        deleteLink.addEventListener("click", (e) => {
            e.preventDefault();
            adIdToDelete = e.target.getAttribute("data-ad-id"); // refers to the HTML element that triggered this event.
            adTitleToDelete = e.target.getAttribute("data-ad-title"); // get the ad title
            modal.style.display = "block";

            // Setting the ad title in the modal
            adTitleElement.innerText = `Title: ${adTitleToDelete}`;
        });
    });

    /** Event Listener for delete confirmation */
    confirmBtn.addEventListener("click", () => {
        // redirect to the delete-ad servlet
        window.location.href = `./delete-ad?id=${adIdToDelete}`;
    });

    /** Event Listener to cancel delete button */
    cancelBtn.addEventListener("click", () => {
        modal.style.display = "none";
    });

    });



}) ();