<?php
include_once 'includes/user.php';
include_once 'includes/user_session.php';
$userSession = new UserSession();
$user = new User();
if(isset($_SESSION['user'])){
    //echo "Hay sesi�n";
    $user->setUser($userSession->getCurrentUser());
    include_once 'Historial.html';
}else if(isset($_POST['userInput']) && isset($_POST['passInput'])){
    //echo "Validaci�n de login";
    $userForm = $_POST['userInput'];
    $passForm = $_POST['passInput'];
    if($user->userExists($userForm, $passForm)){
        //echo "usuario validado";
        $userSession->setCurrentUser($userForm);
        $user->setUser($userForm);
        include_once 'Historial.html';
    }else{
        //echo "nombre de usuario y/o password incorrecto";
        $errorLogin = "Nombre de usuario y/o password es incorrecto";
        include_once 'login.html';
    }
}else{
    //echo "Login";
    include_once 'login.html';
}
?>