<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <title>Téléchargement de fichier en PHP
</title>
    </head>
    <body>
        <header>
                        <img src= src/img/jarditou_logo.jpg width= "300" height= "80"  alt="Logo Jarditou" title="Logo Jarditou">
                        <p id="tt">La qualité depuis 70ans</p>

    <!-- bloc de navigation -->
                                <nav>
                                    <ul>
                                            <li> <a href="index.html" title="Aller a la page d'accueil">Acceuil</a> </li>
                                            <li><a href="tableau.html" title="page tableau"> Tableau</a> </li>
                                            <li><a href="contact.html" title="Contactez nous">Contact</a></li>
                                    </ul>
                                </nav>
</header>
                             <img src="src/img/promotion.jpg"  alt="promotion sur lames de terrasse" title="promotion sur lames de terrasse">
    <!-- section Formulaire -->
            
                    <h1>Contact</h1>
                        <hr>
                    <p>* Ces zones sont obligatoires</p>
                        <form action="postjarditou.php" method="post" id="form" enctype="multipart/form-data">
                    <fieldset>
                        <legend>Vos coordonnées</legend>  
                                                <label for="nom">votre Nom*:</label> <input type="text" name="nom" id="nom" ><br>
                                                <label for="prenom">Vottr prénom*:</label> <input type="text" name="prenom" id="prenom" > <br> <br>
                                                <label for="feminin">Sex*</label><input type="radio" name="sexe" value="feminin" id="feminin" > Féminin
                                                <input type="radio" name="sexe" value="masculin" id="masculin"> Masculin<br> <br>
                                                <label for="date">Date de naissance*</label> <input type="date" name="date" id="date" ><br>
                                                <label for="cpostal">Code postal*</label> <input type="number" name="codepostal" id="cpostal" ><br>
                                                <label for="adresse">Adresse</label> <input type="text" name="adresse" id="adresse"><br>
                                                <label for="ville">Ville</label> <input type="text" name="ville" id="ville"><br>
                                                <label for="email">Email*</label> <input type="text" name="email" placeholder="dave.loper@afpa.fr" id="email" ><br>    
                    </fieldset>
                                        <br>
                    <fieldset>
                                            <legend>Votre demande:</legend>
                                    <label for="sujet"> Sujet*</label> 
                                    <select  name="sujet" id="sujet">

                                                <option value="">veuillez séléctionner un sujet</option>
                                                <option value="commandes">Mes commandes</option>
                                                <option value="produit">quistion sur un produit</option>
                                                <option value="reclamation" >Réclamation</option>
                                                <option value="autres">Autres</option>
                                    </select>
                                        <br><br>
                                                <label for="quistions">Votre quistion*:</label> <textarea  name="les quistions" id="quistions" ></textarea> <br>
                    </fieldset>
                                                                                        <br>
                                                <input type="file" name="fichier"> <br>
                                                <input type="checkbox" name="traitement informatique" id="traitementinformatique"  >
                                                <label for="traitementinformatique">*J'accepte le traitement informatique de ce formulaire</label> <br>
                                                <br>
                                                <input type="submit" value="Envoyer">
                                                <input type="reset" value="anuler"> 
                        </form>
                                                                                        <hr>
            
            <footer>
                <ul>
                    <li><u style="color:blue;">Mentions légales</u></li>
                    <li> <u style="color:blue;">Horaires</u></li>
                    <li><u style="color: blue;">Plan du site</u></li>
                </ul>
     </footer>
    
    </body>
</html>