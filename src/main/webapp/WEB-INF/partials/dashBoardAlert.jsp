<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

<div id="popup-alert" class="alert alert-primary alert-dismissible fade show" role="alert">
<button type="button" class="close" data-dismiss="alert" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
<strong>New message!</strong>
<p class="message">
Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam ea quo unde
vel adipisci blanditiis voluptates eum. Nam, cum minima?
</p>
<div class="actions">
<a href="#" class="btn btn-primary">Take a Look</a>
<a href="#" class="btn btn-secondary" id="mark-as-read">Mark as Read</a>
</div>
</div>


<script>
    const markAsReadButton = document.getElementById("mark-as-read");
    const alertElement = document.getElementById("popup-alert");

    markAsReadButton.addEventListener("click", function(event) {
        event.preventDefault();
        alertElement.classList.add("d-none");
    });
</script>
</body>
</html>
