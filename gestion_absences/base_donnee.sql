<!doctype html>
<html lang="fr" dir="ltr">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="referrer" content="same-origin">
  <meta name="robots" content="noindex,nofollow,notranslate">
  <meta name="google" content="notranslate">
  <style id="cfs-style">html{display: none;}</style>
  <link rel="icon" href="favicon.ico" type="image/x-icon">
  <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
  <link rel="stylesheet" type="text/css" href="./themes/pmahomme/jquery/jquery-ui.css">
  <link rel="stylesheet" type="text/css" href="js/vendor/codemirror/lib/codemirror.css?v=5.2.3">
  <link rel="stylesheet" type="text/css" href="js/vendor/codemirror/addon/hint/show-hint.css?v=5.2.3">
  <link rel="stylesheet" type="text/css" href="js/vendor/codemirror/addon/lint/lint.css?v=5.2.3">
  <link rel="stylesheet" type="text/css" href="./themes/pmahomme/css/theme.css?v=5.2.3">
  <title>localhost / MySQL / gestion_absences | phpMyAdmin 5.2.3</title>
    <script data-cfasync="false" type="text/javascript" src="js/vendor/jquery/jquery.min.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/vendor/jquery/jquery-migrate.min.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/vendor/sprintf.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/dist/ajax.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/dist/keyhandler.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/vendor/jquery/jquery-ui.min.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/dist/name-conflict-fixes.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/vendor/bootstrap/bootstrap.bundle.min.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/vendor/js.cookie.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/vendor/jquery/jquery.validate.min.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/vendor/jquery/jquery-ui-timepicker-addon.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/vendor/jquery/jquery.debounce-1.0.6.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/dist/menu_resizer.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/dist/cross_framing_protection.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/messages.php?l=fr&v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/dist/config.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/dist/doclinks.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/dist/functions.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/dist/navigation.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/dist/indexes.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/dist/common.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/dist/page_settings.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/dist/database/structure.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/dist/table/change.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/vendor/codemirror/lib/codemirror.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/vendor/codemirror/mode/sql/sql.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/vendor/codemirror/addon/runmode/runmode.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/vendor/codemirror/addon/hint/show-hint.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/vendor/codemirror/addon/hint/sql-hint.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/vendor/codemirror/addon/lint/lint.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/dist/codemirror/addon/lint/sql-lint.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/vendor/tracekit.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/dist/error_report.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/dist/drag_drop_import.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/dist/shortcuts_handler.js?v=5.2.3"></script>
  <script data-cfasync="false" type="text/javascript" src="js/dist/console.js?v=5.2.3"></script>

<script data-cfasync="false" type="text/javascript">
// <![CDATA[
CommonParams.setAll({common_query:"",opendb_url:"index.php?route=/database/structure",lang:"fr",server:"1",table:"",db:"gestion_absences",token:"53732e3b29626d43436e29256678565c",text_dir:"ltr",LimitChars:"50",pftext:"",confirm:true,LoginCookieValidity:"1440",session_gc_maxlifetime:"1440",logged_in:true,is_https:false,rootPath:true,arg_separator:"&",version:"5.2.3",auth_type:"cookie",user:"root"});
var firstDayOfCalendar = '0';
var themeImagePath = '.\/themes\/pmahomme\/img\/';
var mysqlDocTemplate = '.\/url.php\u003Furl\u003Dhttps\u00253A\u00252F\u00252Fdev.mysql.com\u00252Fdoc\u00252Frefman\u00252F8.0\u00252Fen\u00252F\u002525s.html';
var maxInputVars = 2500;

if ($.datepicker) {
  $.datepicker.regional[''].closeText = 'Fermer';
  $.datepicker.regional[''].prevText = 'Pr\u00E9c\u00E9dent';
  $.datepicker.regional[''].nextText = 'Suivant';
  $.datepicker.regional[''].currentText = 'Aujourd\u0027hui';
  $.datepicker.regional[''].monthNames = [
    'janvier',
    'f\u00E9vrier',
    'mars',
    'avril',
    'mai',
    'juin',
    'juillet',
    'ao\u00FBt',
    'septembre',
    'octobre',
    'novembre',
    'd\u00E9cembre',
  ];
  $.datepicker.regional[''].monthNamesShort = [
    'jan.',
    'f\u00E9v.',
    'mars',
    'avr.',
    'mai',
    'juin',
    'juil.',
    'ao\u00FBt',
    'sep.',
    'oct.',
    'nov.',
    'd\u00E9c.',
  ];
  $.datepicker.regional[''].dayNames = [
    'dimanche',
    'lundi',
    'mardi',
    'mercredi',
    'jeudi',
    'vendredi',
    'samedi',
  ];
  $.datepicker.regional[''].dayNamesShort = [
    'dim.',
    'lun.',
    'mar.',
    'mer.',
    'jeu.',
    'ven.',
    'sam.',
  ];
  $.datepicker.regional[''].dayNamesMin = [
    'di',
    'lu',
    'ma',
    'me',
    'je',
    've',
    'sa',
  ];
  $.datepicker.regional[''].weekHeader = 'sem';
  $.datepicker.regional[''].showMonthAfterYear = false;
  $.datepicker.regional[''].yearSuffix = 'Aucun\u0028e\u0029';
  $.extend($.datepicker._defaults, $.datepicker.regional['']);
}

if ($.timepicker) {
  $.timepicker.regional[''].timeText = 'Temps';
  $.timepicker.regional[''].hourText = 'heure';
  $.timepicker.regional[''].minuteText = 'minute';
  $.timepicker.regional[''].secondText = 'seconde';
  $.extend($.timepicker._defaults, $.timepicker.regional['']);
}

function extendingValidatorMessages () {
  $.extend($.validator.messages, {
    required: 'Ce\u0020champ\u0020est\u0020obligatoire',
    remote: 'Merci\u0020de\u0020corriger\u0020ce\u0020champ',
    email: 'Merci\u0020de\u0020saisir\u0020une\u0020adresse\u0020de\u0020courriel\u0020valide',
    url: 'Merci\u0020de\u0020saisir\u0020une\u0020URL\u0020valide',
    date: 'Merci\u0020de\u0020saisir\u0020une\u0020date\u0020valide',
    dateISO: 'Merci\u0020de\u0020saisir\u0020une\u0020date\u0020valide\u0020\u0028ISO\u0029',
    number: 'Merci\u0020de\u0020saisir\u0020un\u0020nombre\u0020valide',
    creditcard: 'Merci\u0020de\u0020saisir\u0020un\u0020num\u00E9ro\u0020de\u0020carte\u0020de\u0020cr\u00E9dit\u0020valide',
    digits: 'Merci\u0020de\u0020saisir\u0020uniquement\u0020des\u0020chiffres',
    equalTo: 'Merci\u0020de\u0020saisir\u0020la\u0020m\u00EAme\u0020valeur\u0020\u00E0\u0020nouveau',
    maxlength: $.validator.format('Merci\u0020de\u0020saisir\u0020au\u0020maximum\u0020\u007B0\u007D\u0020caract\u00E8res'),
    minlength: $.validator.format('Merci\u0020de\u0020saisir\u0020au\u0020moins\u0020\u007B0\u007D\u0020caract\u00E8res'),
    rangelength: $.validator.format('Merci\u0020de\u0020saisir\u0020une\u0020valeur\u0020d\u0027une\u0020longueur\u0020entre\u0020\u007B0\u007D\u0020et\u0020\u007B1\u007D\u0020caract\u00E8res'),
    range: $.validator.format('Merci\u0020de\u0020saisir\u0020une\u0020valeur\u0020entre\u0020\u007B0\u007D\u0020et\u0020\u007B1\u007D'),
    max: $.validator.format('Merci\u0020de\u0020saisir\u0020une\u0020valeur\u0020inf\u00E9rieure\u0020ou\u0020\u00E9gale\u0020\u00E0\u0020\u007B0\u007D'),
    min: $.validator.format('Merci\u0020de\u0020saisir\u0020une\u0020valeur\u0020sup\u00E9rieure\u0020ou\u0020\u00E9gale\u0020\u00E0\u0020\u007B0\u007D'),
    validationFunctionForDateTime: $.validator.format('Merci\u0020de\u0020saisir\u0020une\u0020date\u0020ou\u0020une\u0020heure\u0020valide'),
    validationFunctionForHex: $.validator.format('Veuillez\u0020saisir\u0020une\u0020valeur\u0020hexad\u00E9cimale\u0020valide'),
    validationFunctionForMd5: $.validator.format('Cette\u0020colonne\u0020ne\u0020peut\u0020pas\u0020contenir\u0020une\u0020valeur\u0020de\u002032\u0020caract\u00E8res'),
    validationFunctionForAesDesEncrypt: $.validator.format('Ces\u0020fonctions\u0020sont\u0020destin\u00E9es\u0020\u00E0\u0020renvoyer\u0020un\u0020r\u00E9sultat\u0020binaire\u0020\u003B\u0020pour\u0020\u00E9viter\u0020des\u0020r\u00E9sultats\u0020incoh\u00E9rents,\u0020vous\u0020devez\u0020le\u0020stocker\u0020dans\u0020une\u0020colonne\u0020BINARY,\u0020VARBINARY\u0020ou\u0020BLOB.')
  });
}

ConsoleEnterExecutes=false

AJAX.scriptHandler
  .add('vendor/jquery/jquery.min.js', 0)
  .add('vendor/jquery/jquery-migrate.min.js', 0)
  .add('vendor/sprintf.js', 1)
  .add('ajax.js', 0)
  .add('keyhandler.js', 1)
  .add('vendor/jquery/jquery-ui.min.js', 0)
  .add('name-conflict-fixes.js', 1)
  .add('vendor/bootstrap/bootstrap.bundle.min.js', 1)
  .add('vendor/js.cookie.js', 1)
  .add('vendor/jquery/jquery.validate.min.js', 0)
  .add('vendor/jquery/jquery-ui-timepicker-addon.js', 0)
  .add('vendor/jquery/jquery.debounce-1.0.6.js', 0)
  .add('menu_resizer.js', 1)
  .add('cross_framing_protection.js', 0)
  .add('messages.php', 0)
  .add('config.js', 1)
  .add('doclinks.js', 1)
  .add('functions.js', 1)
  .add('navigation.js', 1)
  .add('indexes.js', 1)
  .add('common.js', 1)
  .add('page_settings.js', 1)
  .add('database/structure.js', 1)
  .add('table/change.js', 1)
  .add('vendor/codemirror/lib/codemirror.js', 0)
  .add('vendor/codemirror/mode/sql/sql.js', 0)
  .add('vendor/codemirror/addon/runmode/runmode.js', 0)
  .add('vendor/codemirror/addon/hint/show-hint.js', 0)
  .add('vendor/codemirror/addon/hint/sql-hint.js', 0)
  .add('vendor/codemirror/addon/lint/lint.js', 0)
  .add('codemirror/addon/lint/sql-lint.js', 0)
  .add('vendor/tracekit.js', 1)
  .add('error_report.js', 1)
  .add('drag_drop_import.js', 1)
  .add('shortcuts_handler.js', 1)
  .add('console.js', 1)
;
$(function() {
        AJAX.fireOnload('vendor/sprintf.js');
        AJAX.fireOnload('keyhandler.js');
        AJAX.fireOnload('name-conflict-fixes.js');
      AJAX.fireOnload('vendor/bootstrap/bootstrap.bundle.min.js');
      AJAX.fireOnload('vendor/js.cookie.js');
            AJAX.fireOnload('menu_resizer.js');
          AJAX.fireOnload('config.js');
      AJAX.fireOnload('doclinks.js');
      AJAX.fireOnload('functions.js');
      AJAX.fireOnload('navigation.js');
      AJAX.fireOnload('indexes.js');
      AJAX.fireOnload('common.js');
      AJAX.fireOnload('page_settings.js');
      AJAX.fireOnload('database/structure.js');
      AJAX.fireOnload('table/change.js');
                    AJAX.fireOnload('vendor/tracekit.js');
      AJAX.fireOnload('error_report.js');
      AJAX.fireOnload('drag_drop_import.js');
      AJAX.fireOnload('shortcuts_handler.js');
      AJAX.fireOnload('console.js');
  });
// ]]>
</script>

  <noscript><style>html{display:block}</style></noscript>
</head>
<body>
    <div id="pma_navigation" class="d-print-none" data-config-navigation-width="240">
    <div id="pma_navigation_resizer"></div>
    <div id="pma_navigation_collapser"></div>
    <div id="pma_navigation_content">
      <div id="pma_navigation_header">

                  <div id="pmalogo">
                          <a href="index.php">
                                      <img id="imgpmalogo" src="./themes/pmahomme/img/logo_left.png" alt="phpMyAdmin">
                                      </a>
                      </div>
        
        <div id="navipanellinks">
          <a href="index.php?route=/" title="Accueil"><img src="themes/dot.gif" title="Accueil" alt="Accueil" class="icon ic_b_home"></a>

                      <a class="logout disableAjax" href="index.php?route=/logout" title="Se déconnecter"><img src="themes/dot.gif" title="Se déconnecter" alt="Se déconnecter" class="icon ic_s_loggoff"></a>
          
          <a href="./doc/html/index.html" title="Documentation de phpMyAdmin" target="_blank" rel="noopener noreferrer"><img src="themes/dot.gif" title="Documentation de phpMyAdmin" alt="Documentation de phpMyAdmin" class="icon ic_b_docs"></a>

          <a href="./url.php?url=https%3A%2F%2Fdev.mysql.com%2Fdoc%2Frefman%2F8.0%2Fen%2Findex.html" title="Documentation MySQL" target="_blank" rel="noopener noreferrer"><img src="themes/dot.gif" title="Documentation MySQL" alt="Documentation MySQL" class="icon ic_b_sqlhelp"></a>

          <a id="pma_navigation_settings_icon" href="#" title="Paramètres du panneau de navigation"><img src="themes/dot.gif" title="Paramètres du panneau de navigation" alt="Paramètres du panneau de navigation" class="icon ic_s_cog"></a>

          <a id="pma_navigation_reload" href="#" title="Recharger le panneau de navigation"><img src="themes/dot.gif" title="Recharger le panneau de navigation" alt="Recharger le panneau de navigation" class="icon ic_s_reload"></a>
        </div>

                  <div id="serverChoice">
                <form class="disableAjax" method="post" action="index.php?route=/">
                <input type="hidden" name="token" value="53732e3b29626d43436e29256678565c">
        <label for="select_server">Serveur courant :</label>
        <select id="select_server" class="autosubmit" name="server">
            <option value="">(Serveurs) ...</option>
                <option
        value="1"
        selected="selected"    >MySQL</option>
    <option
        value="2"
            >MariaDB</option>
        </select>
            </form>

          </div>
        
        <img src="themes/dot.gif" title="Chargement en cours…" alt="Chargement en cours…" style="visibility: hidden; display:none" class="icon ic_ajax_clock_small throbber">
      </div>
      <div id="pma_navigation_tree" class="list_container synced highlight autoexpand">

  <div class="pma_quick_warp">
    <div class="drop_list"><button title="Tables récentes" class="drop_button btn">Récentes</button><ul id="pma_recent_list"><li class="warp_link">
            Pas de tables récentes.    </li>
</ul></div>    <div class="drop_list"><button title="Tables préférées" class="drop_button btn">Préférées</button><ul id="pma_favorite_list"><li class="warp_link">
            Pas de tables préférées.    </li>
</ul></div>    <div class="clearfloat"></div>
</div>


<div class="clearfloat"></div>

<ul>
  
  <!-- CONTROLS START -->
<li id="navigation_controls_outer">
    <div id="navigation_controls">
        <a href="#" id="pma_navigation_collapse" title="Tout réduire"><img src="themes/dot.gif" title="Tout réduire" alt="Tout réduire" class="icon ic_s_collapseall"></a>
        <a href="#" id="pma_navigation_sync" title="Supprimer la liaison au panneau principal"><img src="themes/dot.gif" title="Supprimer la liaison au panneau principal" alt="Supprimer la liaison au panneau principal" class="icon ic_s_link"></a>
    </div>
</li>
<!-- CONTROLS ENDS -->

</ul>



<div id='pma_navigation_tree_content'>
  <ul>
      <li class="first new_database italics">
    <div class="block">
      <i class="first"></i>
          </div>
    
          <div class="block second">
                  <a href="index.php?route=/server/databases"><img src="themes/dot.gif" title="Nouvelle base de données" alt="Nouvelle base de données" class="icon ic_b_newdb"></a>
              </div>

              <a class="hover_show_full" href="index.php?route=/server/databases" title="Nouvelle base de données">Nouvelle base de données</a>
          
    

    
    <div class="clearfloat"></div>



  </li>
  <li class="database">
    <div class="block">
      <i></i>
              <b></b>
        <a class="expander" href="#">
          <span class="hide paths_nav" data-apath="cm9vdA==.Z2VzdGlvbl9hYnNlbmNlcw==" data-vpath="cm9vdA==.Z2VzdGlvbl9hYnNlbmNlcw==" data-pos="0"></span>
                    <img src="themes/dot.gif" title="Développer/Réduire" alt="Développer/Réduire" class="icon ic_b_plus">
        </a>
          </div>
    
          <div class="block second">
                  <a href="index.php?route=/database/operations&db=gestion_absences"><img src="themes/dot.gif" title="Opérations sur base de données" alt="Opérations sur base de données" class="icon ic_s_db"></a>
              </div>

              <a class="hover_show_full" href="index.php?route=/database/structure&db=gestion_absences" title="Structure">gestion_absences</a>
          
    

    
    <div class="clearfloat"></div>



  </li>
  <li class="last database">
    <div class="block">
      <i></i>
              
        <a class="expander" href="#">
          <span class="hide paths_nav" data-apath="cm9vdA==.bWFfYmFzZQ==" data-vpath="cm9vdA==.bWFfYmFzZQ==" data-pos="0"></span>
                    <img src="themes/dot.gif" title="Développer/Réduire" alt="Développer/Réduire" class="icon ic_b_plus">
        </a>
          </div>
    
          <div class="block second">
                  <a href="index.php?route=/database/operations&db=ma_base"><img src="themes/dot.gif" title="Opérations sur base de données" alt="Opérations sur base de données" class="icon ic_s_db"></a>
              </div>

              <a class="hover_show_full" href="index.php?route=/database/structure&db=ma_base" title="Structure">ma_base</a>
          
    

    
    <div class="clearfloat"></div>



  </li>

  </ul>
</div>


      </div>

      <div id="pma_navi_settings_container">
                  <div id="pma_navigation_settings"><div class="page_settings"><form method="post" action="index.php&#x3F;route&#x3D;&#x25;2Fdatabase&#x25;2Fstructure&amp;db&#x3D;gestion_absences&amp;server&#x3D;1" class="config-form disableAjax">
  <input type="hidden" name="tab_hash" value="">
      <input type="hidden" name="check_page_refresh" id="check_page_refresh" value="">
    <input type="hidden" name="token" value="53732e3b29626d43436e29256678565c">
  <input type="hidden" name="submit_save" value="Navi">

  <ul class="nav nav-tabs" id="configFormDisplayTab" role="tablist">
          <li class="nav-item" role="presentation">
        <a class="nav-link active" id="Navi_panel-tab" href="#Navi_panel" data-bs-toggle="tab" role="tab" aria-controls="Navi_panel" aria-selected="true">Panneau de navigation</a>
      </li>
          <li class="nav-item" role="presentation">
        <a class="nav-link" id="Navi_tree-tab" href="#Navi_tree" data-bs-toggle="tab" role="tab" aria-controls="Navi_tree" aria-selected="false">Arborescence de navigation</a>
      </li>
          <li class="nav-item" role="presentation">
        <a class="nav-link" id="Navi_servers-tab" href="#Navi_servers" data-bs-toggle="tab" role="tab" aria-controls="Navi_servers" aria-selected="false">Serveurs</a>
      </li>
          <li class="nav-item" role="presentation">
        <a class="nav-link" id="Navi_databases-tab" href="#Navi_databases" data-bs-toggle="tab" role="tab" aria-controls="Navi_databases" aria-selected="false">Bases de données</a>
      </li>
          <li class="nav-item" role="presentation">
        <a class="nav-link" id="Navi_tables-tab" href="#Navi_tables" data-bs-toggle="tab" role="tab" aria-controls="Navi_tables" aria-selected="false">Tables</a>
      </li>
      </ul>
  <div class="tab-content">
          <div class="tab-pane fade show active" id="Navi_panel" role="tabpanel" aria-labelledby="Navi_panel-tab">
        <div class="card border-top-0">
          <div class="card-body">
            <h5 class="card-title visually-hidden">Panneau de navigation</h5>
                          <h6 class="card-subtitle mb-2 text-muted">Personnaliser l'apparence du panneau de navigation.</h6>
            
            <fieldset class="optbox">
              <legend>Panneau de navigation</legend>

                            
              <table class="table table-borderless">
                <tr>
  <th>
    <label for="ShowDatabasesNavigationAsTree">Afficher la navigation des bases de données en tant qu'arborescence</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_ShowDatabasesNavigationAsTree" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
          <small>Dans le volet de navigation, remplacer l'arborescence de la base de données par un sélecteur</small>
      </th>

  <td>
          <span class="checkbox">
        <input type="checkbox" name="ShowDatabasesNavigationAsTree" id="ShowDatabasesNavigationAsTree" checked>
      </span>
    
    
    
          <a class="restore-default hide" href="#ShowDatabasesNavigationAsTree" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>
<tr>
  <th>
    <label for="NavigationLinkWithMainPanel">Relier au panneau principal</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_NavigationLinkWithMainPanel" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
          <small>Relier au panneau principal en mettant en surbrillance la base de données ou la table active.</small>
      </th>

  <td>
          <span class="checkbox">
        <input type="checkbox" name="NavigationLinkWithMainPanel" id="NavigationLinkWithMainPanel" checked>
      </span>
    
    
    
          <a class="restore-default hide" href="#NavigationLinkWithMainPanel" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>
<tr>
  <th>
    <label for="NavigationDisplayLogo">Afficher le logo</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_NavigationDisplayLogo" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
          <small>Afficher le logo dans le panneau de navigation.</small>
      </th>

  <td>
          <span class="checkbox">
        <input type="checkbox" name="NavigationDisplayLogo" id="NavigationDisplayLogo" checked>
      </span>
    
    
    
          <a class="restore-default hide" href="#NavigationDisplayLogo" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>
<tr>
  <th>
    <label for="NavigationLogoLink">URL du lien sous le logo</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_NavigationLogoLink" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
          <small>L'URL vers lequel pointera le logo dans le panneau de navigation.</small>
      </th>

  <td>
          <input type="text" name="NavigationLogoLink" id="NavigationLogoLink" value="index.php" class="w-75">
    
    
    
          <a class="restore-default hide" href="#NavigationLogoLink" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>
<tr>
  <th>
    <label for="NavigationLogoLinkWindow">Fenêtre cible pour la page ouverte lors d'un clic sur le logo</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_NavigationLogoLinkWindow" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
          <small>Ouvrir la page en lien dans la fenêtre principale, (<code>main</code>) ou dans une nouvelle fenêtre, (<code>new</code>).</small>
      </th>

  <td>
          <select name="NavigationLogoLinkWindow" id="NavigationLogoLinkWindow" class="w-75">
                            <option value="main" selected>main</option>
                            <option value="new">new</option>
              </select>
    
    
    
          <a class="restore-default hide" href="#NavigationLogoLinkWindow" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>
<tr>
  <th>
    <label for="NavigationTreePointerEnable">Active la surbrillance</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_NavigationTreePointerEnable" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
          <small>Faire ressortir le nom du serveur dans le panneau de navigation.</small>
      </th>

  <td>
          <span class="checkbox">
        <input type="checkbox" name="NavigationTreePointerEnable" id="NavigationTreePointerEnable" checked>
      </span>
    
    
    
          <a class="restore-default hide" href="#NavigationTreePointerEnable" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>
<tr>
  <th>
    <label for="FirstLevelNavigationItems">Nombre maximum d'éléments au premier niveau</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_FirstLevelNavigationItems" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
          <small>Le nombre d'éléments qui peuvent être affichés pour chaque page du premier niveau de l'arborescence de navigation.</small>
      </th>

  <td>
          <input type="number" name="FirstLevelNavigationItems" id="FirstLevelNavigationItems" value="100" class="">
    
    
    
          <a class="restore-default hide" href="#FirstLevelNavigationItems" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>
<tr>
  <th>
    <label for="NavigationTreeDisplayItemFilterMinimum">Nombre minimum d'éléments pour afficher la boîte de filtrage</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_NavigationTreeDisplayItemFilterMinimum" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
          <small>Définir le nombre minimum d'éléments (tables, vues, procédures et événements) nécessaires pour afficher la boîte de filtrage.</small>
      </th>

  <td>
          <input type="number" name="NavigationTreeDisplayItemFilterMinimum" id="NavigationTreeDisplayItemFilterMinimum" value="30" class="">
    
    
    
          <a class="restore-default hide" href="#NavigationTreeDisplayItemFilterMinimum" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>
<tr>
  <th>
    <label for="NumRecentTables">Tables récemment utilisées</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_NumRecentTables" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
          <small>Nombre maximum de tables récentes ; définir à 0 pour désactiver.</small>
      </th>

  <td>
          <input type="number" name="NumRecentTables" id="NumRecentTables" value="10" class="">
    
    
    
          <a class="restore-default hide" href="#NumRecentTables" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>
<tr>
  <th>
    <label for="NumFavoriteTables">Tables préférées</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_NumFavoriteTables" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
          <small>Le nombre maximum de tables préférées ; définir à 0 pour désactiver.</small>
      </th>

  <td>
          <input type="number" name="NumFavoriteTables" id="NumFavoriteTables" value="10" class="">
    
    
    
          <a class="restore-default hide" href="#NumFavoriteTables" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>
<tr>
  <th>
    <label for="NavigationWidth">Largeur du panneau de navigation</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_NavigationWidth" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
          <small>Définir à 0 pour replier le panneau de navigation.</small>
      </th>

  <td>
          <input type="number" name="NavigationWidth" id="NavigationWidth" value="240" class="">
    
    
    
          <a class="restore-default hide" href="#NavigationWidth" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>

              </table>
            </fieldset>
          </div>

                  </div>
      </div>
          <div class="tab-pane fade" id="Navi_tree" role="tabpanel" aria-labelledby="Navi_tree-tab">
        <div class="card border-top-0">
          <div class="card-body">
            <h5 class="card-title visually-hidden">Arborescence de navigation</h5>
                          <h6 class="card-subtitle mb-2 text-muted">Personnaliser l'arborescence de navigation.</h6>
            
            <fieldset class="optbox">
              <legend>Arborescence de navigation</legend>

                            
              <table class="table table-borderless">
                <tr>
  <th>
    <label for="MaxNavigationItems">Nombre maximum d'éléments dans la branche</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_MaxNavigationItems" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
          <small>Le nombre d'éléments qui peuvent être affichés pour chaque page de l'arborescence de navigation.</small>
      </th>

  <td>
          <input type="number" name="MaxNavigationItems" id="MaxNavigationItems" value="50" class="">
    
    
    
          <a class="restore-default hide" href="#MaxNavigationItems" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>
<tr>
  <th>
    <label for="NavigationTreeEnableGrouping">Regrouper les éléments dans l'arborescence</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_NavigationTreeEnableGrouping" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
          <small>Regrouper les éléments dans l'arborescence de navigation (déterminé par le séparateur défini dans les onglets Bases de données et Tables ci-dessus).</small>
      </th>

  <td>
          <span class="checkbox">
        <input type="checkbox" name="NavigationTreeEnableGrouping" id="NavigationTreeEnableGrouping" checked>
      </span>
    
    
    
          <a class="restore-default hide" href="#NavigationTreeEnableGrouping" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>
<tr>
  <th>
    <label for="NavigationTreeEnableExpansion">Activer l'expansion de l'arborescence de navigation</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_NavigationTreeEnableExpansion" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
          <small>Pour offrir la possibilité d'expansion de l'arborescence dans le panneau de navigation.</small>
      </th>

  <td>
          <span class="checkbox">
        <input type="checkbox" name="NavigationTreeEnableExpansion" id="NavigationTreeEnableExpansion" checked>
      </span>
    
    
    
          <a class="restore-default hide" href="#NavigationTreeEnableExpansion" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>
<tr>
  <th>
    <label for="NavigationTreeShowTables">Afficher les tables dans l'arborescence</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_NavigationTreeShowTables" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
          <small>Pour afficher les tables dans l'arborescence de navigation</small>
      </th>

  <td>
          <span class="checkbox">
        <input type="checkbox" name="NavigationTreeShowTables" id="NavigationTreeShowTables" checked>
      </span>
    
    
    
          <a class="restore-default hide" href="#NavigationTreeShowTables" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>
<tr>
  <th>
    <label for="NavigationTreeShowViews">Afficher les vues dans l'arborescence</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_NavigationTreeShowViews" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
          <small>Pour afficher les vues dans l'arborescence de navigation</small>
      </th>

  <td>
          <span class="checkbox">
        <input type="checkbox" name="NavigationTreeShowViews" id="NavigationTreeShowViews" checked>
      </span>
    
    
    
          <a class="restore-default hide" href="#NavigationTreeShowViews" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>
<tr>
  <th>
    <label for="NavigationTreeShowFunctions">Afficher les fonctions dans l'arborescence</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_NavigationTreeShowFunctions" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
          <small>Pour afficher les fonctions dans l'arborescence de navigation</small>
      </th>

  <td>
          <span class="checkbox">
        <input type="checkbox" name="NavigationTreeShowFunctions" id="NavigationTreeShowFunctions" checked>
      </span>
    
    
    
          <a class="restore-default hide" href="#NavigationTreeShowFunctions" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>
<tr>
  <th>
    <label for="NavigationTreeShowProcedures">Afficher les procédures dans l'arborescence</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_NavigationTreeShowProcedures" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
          <small>Pour afficher les procédures dans l'arborescence de navigation</small>
      </th>

  <td>
          <span class="checkbox">
        <input type="checkbox" name="NavigationTreeShowProcedures" id="NavigationTreeShowProcedures" checked>
      </span>
    
    
    
          <a class="restore-default hide" href="#NavigationTreeShowProcedures" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>
<tr>
  <th>
    <label for="NavigationTreeShowEvents">Afficher les évènements dans l'arborescence</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_NavigationTreeShowEvents" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
          <small>Pour afficher les événements dans l'arborescence de navigation</small>
      </th>

  <td>
          <span class="checkbox">
        <input type="checkbox" name="NavigationTreeShowEvents" id="NavigationTreeShowEvents" checked>
      </span>
    
    
    
          <a class="restore-default hide" href="#NavigationTreeShowEvents" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>
<tr>
  <th>
    <label for="NavigationTreeAutoexpandSingleDb">Expansion d'une seule base de données</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_NavigationTreeAutoexpandSingleDb" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
          <small>S'il faut développer automatiquement une base de données unique dans l'arborescence de navigation.</small>
      </th>

  <td>
          <span class="checkbox">
        <input type="checkbox" name="NavigationTreeAutoexpandSingleDb" id="NavigationTreeAutoexpandSingleDb" checked>
      </span>
    
    
    
          <a class="restore-default hide" href="#NavigationTreeAutoexpandSingleDb" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>

              </table>
            </fieldset>
          </div>

                  </div>
      </div>
          <div class="tab-pane fade" id="Navi_servers" role="tabpanel" aria-labelledby="Navi_servers-tab">
        <div class="card border-top-0">
          <div class="card-body">
            <h5 class="card-title visually-hidden">Serveurs</h5>
                          <h6 class="card-subtitle mb-2 text-muted">Options d'affichage des serveurs.</h6>
            
            <fieldset class="optbox">
              <legend>Serveurs</legend>

                            
              <table class="table table-borderless">
                <tr>
  <th>
    <label for="NavigationDisplayServers">Afficher la liste des serveurs</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_NavigationDisplayServers" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
          <small>Afficher le choix de serveurs au haut du panneau de navigation.</small>
      </th>

  <td>
          <span class="checkbox">
        <input type="checkbox" name="NavigationDisplayServers" id="NavigationDisplayServers" checked>
      </span>
    
    
    
          <a class="restore-default hide" href="#NavigationDisplayServers" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>
<tr>
  <th>
    <label for="DisplayServersList">Afficher les serveurs sous forme de liste</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_DisplayServersList" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
          <small>Afficher la liste des serveurs au lieu d'un menu déroulant.</small>
      </th>

  <td>
          <span class="checkbox">
        <input type="checkbox" name="DisplayServersList" id="DisplayServersList">
      </span>
    
    
    
          <a class="restore-default hide" href="#DisplayServersList" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>

              </table>
            </fieldset>
          </div>

                  </div>
      </div>
          <div class="tab-pane fade" id="Navi_databases" role="tabpanel" aria-labelledby="Navi_databases-tab">
        <div class="card border-top-0">
          <div class="card-body">
            <h5 class="card-title visually-hidden">Bases de données</h5>
                          <h6 class="card-subtitle mb-2 text-muted">Options d'affichage des bases de données.</h6>
            
            <fieldset class="optbox">
              <legend>Bases de données</legend>

                            
              <table class="table table-borderless">
                <tr>
  <th>
    <label for="NavigationTreeDisplayDbFilterMinimum">Nombre minimum de bases de données pour activer le filtre</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_NavigationTreeDisplayDbFilterMinimum" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
      </th>

  <td>
          <input type="number" name="NavigationTreeDisplayDbFilterMinimum" id="NavigationTreeDisplayDbFilterMinimum" value="30" class="">
    
    
    
          <a class="restore-default hide" href="#NavigationTreeDisplayDbFilterMinimum" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>
<tr>
  <th>
    <label for="NavigationTreeDbSeparator">Séparateur pour l'arborescence des bases de données</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_NavigationTreeDbSeparator" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
          <small>Chaîne qui sépare les noms de bases de données en niveaux.</small>
      </th>

  <td>
                <input type="text" size="25" name="NavigationTreeDbSeparator" id="NavigationTreeDbSeparator" value="_" class="">
    
    
    
          <a class="restore-default hide" href="#NavigationTreeDbSeparator" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>

              </table>
            </fieldset>
          </div>

                  </div>
      </div>
          <div class="tab-pane fade" id="Navi_tables" role="tabpanel" aria-labelledby="Navi_tables-tab">
        <div class="card border-top-0">
          <div class="card-body">
            <h5 class="card-title visually-hidden">Tables</h5>
                          <h6 class="card-subtitle mb-2 text-muted">Options d'affichage des tables.</h6>
            
            <fieldset class="optbox">
              <legend>Tables</legend>

                            
              <table class="table table-borderless">
                <tr>
  <th>
    <label for="NavigationTreeDefaultTabTable">Cible de l'icône d'accès rapide</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_NavigationTreeDefaultTabTable" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
      </th>

  <td>
          <select name="NavigationTreeDefaultTabTable" id="NavigationTreeDefaultTabTable" class="w-75">
                            <option value="structure" selected>Structure</option>
                            <option value="sql">SQL</option>
                            <option value="search">Rechercher</option>
                            <option value="insert">Insérer</option>
                            <option value="browse">Parcourir</option>
              </select>
    
    
    
          <a class="restore-default hide" href="#NavigationTreeDefaultTabTable" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>
<tr>
  <th>
    <label for="NavigationTreeDefaultTabTable2">Cible de la deuxième icône d'accès rapide</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_NavigationTreeDefaultTabTable2" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
      </th>

  <td>
          <select name="NavigationTreeDefaultTabTable2" id="NavigationTreeDefaultTabTable2" class="w-75">
                            <option value="" selected></option>
                            <option value="structure">Structure</option>
                            <option value="sql">SQL</option>
                            <option value="search">Rechercher</option>
                            <option value="insert">Insérer</option>
                            <option value="browse">Parcourir</option>
              </select>
    
    
    
          <a class="restore-default hide" href="#NavigationTreeDefaultTabTable2" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>
<tr>
  <th>
    <label for="NavigationTreeTableSeparator">Séparateur pour l'arborescence des noms de tables</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_NavigationTreeTableSeparator" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
          <small>Chaîne qui sépare les noms de table en niveaux.</small>
      </th>

  <td>
                <input type="text" size="25" name="NavigationTreeTableSeparator" id="NavigationTreeTableSeparator" value="__" class="">
    
    
    
          <a class="restore-default hide" href="#NavigationTreeTableSeparator" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>
<tr>
  <th>
    <label for="NavigationTreeTableLevel">Nombre de niveaux pour l'arborescence des tables</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_NavigationTreeTableLevel" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
      </th>

  <td>
          <input type="number" name="NavigationTreeTableLevel" id="NavigationTreeTableLevel" value="1" class="">
    
    
    
          <a class="restore-default hide" href="#NavigationTreeTableLevel" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>

              </table>
            </fieldset>
          </div>

                  </div>
      </div>
      </div>
</form>

<script type="text/javascript">
  if (typeof configInlineParams === 'undefined' || !Array.isArray(configInlineParams)) {
    configInlineParams = [];
  }
  configInlineParams.push(function () {
    registerFieldValidator('FirstLevelNavigationItems', 'validatePositiveNumber', true);
registerFieldValidator('NavigationTreeDisplayItemFilterMinimum', 'validatePositiveNumber', true);
registerFieldValidator('NumRecentTables', 'validateNonNegativeNumber', true);
registerFieldValidator('NumFavoriteTables', 'validateNonNegativeNumber', true);
registerFieldValidator('NavigationWidth', 'validateNonNegativeNumber', true);
registerFieldValidator('MaxNavigationItems', 'validatePositiveNumber', true);
registerFieldValidator('NavigationTreeTableLevel', 'validatePositiveNumber', true);

    $.extend(Messages, {
      'error_nan_p': 'Nombre\u0020non\u0020positif\u0020\u0021',
      'error_nan_nneg': 'Nombre\u0020non\u0020n\u00E9gatif\u0020\u0021',
      'error_incorrect_port': 'Num\u00E9ro\u0020de\u0020port\u0020invalide\u0020\u0021',
      'error_invalid_value': 'Valeur\u0020incorrecte\u0020\u0021',
      'error_value_lte': 'La\u0020valeur\u0020doit\u0020\u00EAtre\u0020\u00E9gale\u0020ou\u0020plus\u0020petite\u0020que\u0020\u0025s\u0020\u0021',
    });

    $.extend(defaultValues, {
      'ShowDatabasesNavigationAsTree': true,
      'NavigationLinkWithMainPanel': true,
      'NavigationDisplayLogo': true,
      'NavigationLogoLink': 'index.php',
      'NavigationLogoLinkWindow': ['main'],
      'NavigationTreePointerEnable': true,
      'FirstLevelNavigationItems': '100',
      'NavigationTreeDisplayItemFilterMinimum': '30',
      'NumRecentTables': '10',
      'NumFavoriteTables': '10',
      'NavigationWidth': '240',
      'MaxNavigationItems': '50',
      'NavigationTreeEnableGrouping': true,
      'NavigationTreeEnableExpansion': true,
      'NavigationTreeShowTables': true,
      'NavigationTreeShowViews': true,
      'NavigationTreeShowFunctions': true,
      'NavigationTreeShowProcedures': true,
      'NavigationTreeShowEvents': true,
      'NavigationTreeAutoexpandSingleDb': true,
      'NavigationDisplayServers': true,
      'DisplayServersList': false,
      'NavigationTreeDisplayDbFilterMinimum': '30',
      'NavigationTreeDbSeparator': '_',
      'NavigationTreeDefaultTabTable': ['structure'],
      'NavigationTreeDefaultTabTable2': [''],
      'NavigationTreeTableSeparator': '__',
      'NavigationTreeTableLevel': '1'
    });
  });
  if (typeof configScriptLoaded !== 'undefined' && configInlineParams) {
    loadInlineConfig();
  }
</script>
</div></div>
              </div>
    </div>

          <div class="pma_drop_handler">
        Déposer des fichiers ici      </div>
      <div class="pma_sql_import_status">
        <h2>
          Téléversement SQL          ( <span class="pma_import_count">0</span> )
          <span class="close">x</span>
          <span class="minimize">-</span>
        </h2>
        <div></div>
      </div>
      </div>
  <div class="modal fade" id="unhideNavItemModal" tabindex="-1" aria-labelledby="unhideNavItemModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="unhideNavItemModalLabel">Afficher les éléments cachés de l'arbre de navigation.</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Fermer"></button>
      </div>
      <div class="modal-body"></div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fermer</button>
      </div>
    </div>
  </div>
</div>

  <div class="modal fade" id="createViewModal" tabindex="-1" aria-labelledby="createViewModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" id="createViewModalDialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="createViewModalLabel">Créer une vue</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Fermer"></button>
      </div>
      <div class="modal-body"></div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" id="createViewModalGoButton">Exécuter</button>
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fermer</button>
      </div>
    </div>
  </div>
</div>


  
  <div id="prefs_autoload" class="alert alert-primary d-print-none hide" role="alert">
    <form action="index.php?route=/preferences/manage" method="post" class="disableAjax">
        <input type="hidden" name="token" value="53732e3b29626d43436e29256678565c">
        <input type="hidden" name="json" value="">
        <input type="hidden" name="submit_import" value="1">
        <input type="hidden" name="return_url" value="index.php?route=%2Fdatabase%2Fstructure&amp;db=gestion_absences">
        Ce navigateur contient une configuration phpMyAdmin pour ce domaine. Faut-il l'importer dans la session courante ?        <br>
        <a href="#yes">Oui</a>
        / <a href="#no">Non</a>
        / <a href="#delete">Supprimer les paramètres</a>
    </form>
</div>


  
      <noscript>
      <div class="alert alert-danger" role="alert">
  <img src="themes/dot.gif" title="" alt="" class="icon ic_s_error"> JavaScript doit être activé au-delà de ce point !
</div>

    </noscript>
  
      <div id="floating_menubar" class="d-print-none"></div>
<nav id="server-breadcrumb" aria-label="breadcrumb">
  <ol class="breadcrumb breadcrumb-navbar">
    <li class="breadcrumb-item">
      <img src="themes/dot.gif" title="" alt="" class="icon ic_s_host">
      <a href="index.php?route=/" data-raw-text="MySQL:3306" draggable="false">
        Serveur :        MySQL:3306
      </a>
    </li>

          <li class="breadcrumb-item">
        <img src="themes/dot.gif" title="" alt="" class="icon ic_s_db">
        <a href="index.php?route=/database/structure&db=gestion_absences" data-raw-text="gestion_absences" draggable="false">
          Base de données :          gestion_absences
        </a>
      </li>

            </ol>
</nav>
<div id="topmenucontainer" class="menucontainer">
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-label="Afficher le menu" aria-controls="navbarNav" aria-expanded="false">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul id="topmenu" class="navbar-nav">
                  <li class="nav-item active">
            <a class="nav-link text-nowrap disableAjax" href="index.php?route=/database/structure&db=gestion_absences">
              <img src="themes/dot.gif" title="Structure" alt="Structure" class="icon ic_b_props">&nbsp;Structure
                              <span class="visually-hidden">(actuelle)</span>
                          </a>
          </li>
                  <li class="nav-item">
            <a class="nav-link text-nowrap disableAjax" href="index.php?route=/database/sql&db=gestion_absences">
              <img src="themes/dot.gif" title="SQL" alt="SQL" class="icon ic_b_sql">&nbsp;SQL
                          </a>
          </li>
                  <li class="nav-item">
            <a class="nav-link text-nowrap disableAjax" href="index.php?route=/database/search&db=gestion_absences">
              <img src="themes/dot.gif" title="Rechercher" alt="Rechercher" class="icon ic_b_search">&nbsp;Rechercher
                          </a>
          </li>
                  <li class="nav-item">
            <a class="nav-link text-nowrap disableAjax" href="index.php?route=/database/multi-table-query&db=gestion_absences">
              <img src="themes/dot.gif" title="Requête" alt="Requête" class="icon ic_s_db">&nbsp;Requête
                          </a>
          </li>
                  <li class="nav-item">
            <a class="nav-link text-nowrap disableAjax" href="index.php?route=/database/export&db=gestion_absences">
              <img src="themes/dot.gif" title="Exporter" alt="Exporter" class="icon ic_b_export">&nbsp;Exporter
                          </a>
          </li>
                  <li class="nav-item">
            <a class="nav-link text-nowrap disableAjax" href="index.php?route=/database/import&db=gestion_absences">
              <img src="themes/dot.gif" title="Importer" alt="Importer" class="icon ic_b_import">&nbsp;Importer
                          </a>
          </li>
                  <li class="nav-item">
            <a class="nav-link text-nowrap disableAjax" href="index.php?route=/database/operations&db=gestion_absences">
              <img src="themes/dot.gif" title="Opérations" alt="Opérations" class="icon ic_b_tblops">&nbsp;Opérations
                          </a>
          </li>
                  <li class="nav-item">
            <a class="nav-link text-nowrap disableAjax" href="index.php?route=/server/privileges&db=gestion_absences&checkprivsdb=gestion_absences&viewing_mode=db">
              <img src="themes/dot.gif" title="Privilèges" alt="Privilèges" class="icon ic_s_rights">&nbsp;Privilèges
                          </a>
          </li>
                  <li class="nav-item">
            <a class="nav-link text-nowrap disableAjax" href="index.php?route=/database/routines&db=gestion_absences">
              <img src="themes/dot.gif" title="Procédures stockées" alt="Procédures stockées" class="icon ic_b_routines">&nbsp;Procédures stockées
                          </a>
          </li>
                  <li class="nav-item">
            <a class="nav-link text-nowrap disableAjax" href="index.php?route=/database/events&db=gestion_absences">
              <img src="themes/dot.gif" title="Évènements" alt="Évènements" class="icon ic_b_events">&nbsp;Évènements
                          </a>
          </li>
                  <li class="nav-item">
            <a class="nav-link text-nowrap disableAjax" href="index.php?route=/database/triggers&db=gestion_absences">
              <img src="themes/dot.gif" title="Déclencheurs" alt="Déclencheurs" class="icon ic_b_triggers">&nbsp;Déclencheurs
                          </a>
          </li>
                  <li class="nav-item">
            <a class="nav-link text-nowrap disableAjax" href="index.php?route=/database/designer&db=gestion_absences">
              <img src="themes/dot.gif" title="Concepteur" alt="Concepteur" class="icon ic_b_relations">&nbsp;Concepteur
                          </a>
          </li>
              </ul>
    </div>
  </nav>
</div>

    <span id="page_nav_icons" class="d-print-none">
      <span id="lock_page_icon"></span>
      <span id="page_settings_icon">
        <img src="themes/dot.gif" title="Paramètres relatifs à la page" alt="Paramètres relatifs à la page" class="icon ic_s_cog">
      </span>
      <a id="goto_pagetop" href="#"><img src="themes/dot.gif" title="Cliquer sur la barre pour faire défiler vers le haut de la page" alt="Cliquer sur la barre pour faire défiler vers le haut de la page" class="icon ic_s_top"></a>
    </span>
  
  <div id="pma_console_container" class="d-print-none">
    <div id="pma_console">
                <div class="toolbar collapsed">
                    <div class="switch_button console_switch">
            <img src="themes/dot.gif" title="Console de requête SQL" alt="Console de requête SQL" class="icon ic_console">
            <span>Console de requêtes SQL</span>
        </div>
                            <div class="button clear">
            
            <span>Effacer</span>
        </div>
                            <div class="button history">
            
            <span>Historique</span>
        </div>
                            <div class="button options">
            
            <span>Options</span>
        </div>
                                        <div class="button debug hide">
            
            <span>Déboguer SQL</span>
        </div>
            </div>
                <div class="content">
            <div class="console_message_container">
                <div class="message welcome">
                    <span id="instructions-0">
                        Faire Ctrl+Entrée pour exécuter la requête                    </span>
                    <span class="hide" id="instructions-1">
                        Faire Entrée pour exécuter la requête                    </span>
                </div>
                            </div><!-- console_message_container -->
            <div class="query_input">
                <span class="console_query_input"></span>
            </div>
        </div><!-- message end -->
                <div class="mid_layer"></div>
                <div class="card" id="debug_console">
            <div class="toolbar ">
                    <div class="button order order_asc">
            
            <span>croissant</span>
        </div>
                            <div class="button order order_desc">
            
            <span>décroissant</span>
        </div>
                            <div class="text">
            
            <span>Ordre :</span>
        </div>
                            <div class="switch_button">
            
            <span>Déboguer SQL</span>
        </div>
                            <div class="button order_by sort_count">
            
            <span>Nombre</span>
        </div>
                            <div class="button order_by sort_exec">
            
            <span>Ordre d&#039;exécution</span>
        </div>
                            <div class="button order_by sort_time">
            
            <span>Temps nécessaire</span>
        </div>
                            <div class="text">
            
            <span>Trier par :</span>
        </div>
                            <div class="button group_queries">
            
            <span>Regrouper les requêtes</span>
        </div>
                            <div class="button ungroup_queries">
            
            <span>Dissocier les groupes</span>
        </div>
            </div>
            <div class="content debug">
                <div class="message welcome"></div>
                <div class="debugLog"></div>
            </div> <!-- Content -->
            <div class="templates">
                <div class="debug_query action_content">
                    <span class="action collapse">
            Réduire
                    </span>
                            <span class="action expand">
            Développer
                    </span>
                            <span class="action dbg_show_trace">
            Afficher le suivi
                    </span>
                            <span class="action dbg_hide_trace">
            Masquer le suivi
                    </span>
                            <span class="text count hide">
            Nombre
                            : <span></span>
                    </span>
                            <span class="text time">
            Temps nécessaire
                            : <span></span>
                    </span>
            </div>
            </div> <!-- Template -->
        </div> <!-- Debug SQL card -->
                        <div class="card" id="pma_console_options">
            <div class="toolbar ">
                    <div class="switch_button">
            
            <span>Options</span>
        </div>
                            <div class="button default">
            
            <span>Définir par défaut</span>
        </div>
            </div>
            <div class="content">
                <label>
                    <input type="checkbox" name="always_expand">Toujours développer les messages                </label>
                <br>
                <label>
                    <input type="checkbox" name="start_history">Afficher l'historique des requêtes au démarrage                </label>
                <br>
                <label>
                    <input type="checkbox" name="current_query">Afficher la requête de navigation courante                </label>
                <br>
                <label>
                    <input type="checkbox" name="enter_executes">
                        Exécuter les requêtes avec Entrée et insérer une nouvelle ligne avec Maj+Entrée. Ce choix peut être rendu permanent via les paramètres.                </label>
                <br>
                <label>
                    <input type="checkbox" name="dark_theme">Passer au thème sombre                </label>
                <br>
            </div>
        </div> <!-- Options card -->
        <div class="templates">
                        <div class="query_actions">
                    <span class="action collapse">
            Réduire
                    </span>
                            <span class="action expand">
            Développer
                    </span>
                            <span class="action requery">
            Exécuter la requête à nouveau
                    </span>
                            <span class="action edit">
            Éditer
                    </span>
                            <span class="action explain">
            Expliquer
                    </span>
                            <span class="action profiling">
            Profilage
                    </span>
                            <span class="">
            
                    </span>
                            <span class="text failed">
            La requête a échoué
                    </span>
                            <span class="text targetdb">
            Base de données
                            : <span></span>
                    </span>
                            <span class="text query_time">
            Daté du
                            : <span></span>
                    </span>
            </div>
        </div>
    </div> <!-- #console end -->
</div> <!-- #console_container end -->


  <div id="page_content">
    

    <div class="modal fade" id="previewSqlModal" tabindex="-1" aria-labelledby="previewSqlModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="previewSqlModalLabel">Chargement en cours</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Fermer"></button>
      </div>
      <div class="modal-body"></div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fermer</button>
      </div>
    </div>
  </div>
</div>

    <div class="modal fade" id="enumEditorModal" tabindex="-1" aria-labelledby="enumEditorModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="enumEditorModalLabel">Éditeur ENUM/SET</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Fermer"></button>
      </div>
      <div class="modal-body"></div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" id="enumEditorGoButton" data-bs-dismiss="modal">Exécuter</button>
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fermer</button>
      </div>
    </div>
  </div>
</div>

    <div class="modal fade" id="createViewModal" tabindex="-1" aria-labelledby="createViewModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" id="createViewModalDialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="createViewModalLabel">Créer une vue</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Fermer"></button>
      </div>
      <div class="modal-body"></div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" id="createViewModalGoButton">Exécuter</button>
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fermer</button>
      </div>
    </div>
  </div>
</div>
<div id="page_settings_modal"><div class="page_settings"><form method="post" action="index.php&#x3F;route&#x3D;&#x25;2Fdatabase&#x25;2Fstructure&amp;db&#x3D;gestion_absences&amp;server&#x3D;1" class="config-form disableAjax">
  <input type="hidden" name="tab_hash" value="">
      <input type="hidden" name="check_page_refresh" id="check_page_refresh" value="">
    <input type="hidden" name="token" value="53732e3b29626d43436e29256678565c">
  <input type="hidden" name="submit_save" value="DbStructure">

  <ul class="nav nav-tabs" id="configFormDisplayTab" role="tablist">
          <li class="nav-item" role="presentation">
        <a class="nav-link active" id="DbStructure-tab" href="#DbStructure" data-bs-toggle="tab" role="tab" aria-controls="DbStructure" aria-selected="true">Structure de base de données</a>
      </li>
      </ul>
  <div class="tab-content">
          <div class="tab-pane fade show active" id="DbStructure" role="tabpanel" aria-labelledby="DbStructure-tab">
        <div class="card border-top-0">
          <div class="card-body">
            <h5 class="card-title visually-hidden">Structure de base de données</h5>
                          <h6 class="card-subtitle mb-2 text-muted">Choisir les détails à afficher dans la liste des tables.</h6>
            
            <fieldset class="optbox">
              <legend>Structure de base de données</legend>

                            
              <table class="table table-borderless">
                <tr>
  <th>
    <label for="ShowDbStructureCharset">Afficher le jeu de caractères de la table</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_ShowDbStructureCharset" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
          <small>Afficher ou masquer une colonne affichant le jeu de caractères pour toutes les tables.</small>
      </th>

  <td>
          <span class="checkbox">
        <input type="checkbox" name="ShowDbStructureCharset" id="ShowDbStructureCharset">
      </span>
    
    
    
          <a class="restore-default hide" href="#ShowDbStructureCharset" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>
<tr>
  <th>
    <label for="ShowDbStructureComment">Afficher les commentaires de table</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_ShowDbStructureComment" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
          <small>Afficher ou masquer une colonne affichant les commentaires pour toutes les tables.</small>
      </th>

  <td>
          <span class="checkbox">
        <input type="checkbox" name="ShowDbStructureComment" id="ShowDbStructureComment">
      </span>
    
    
    
          <a class="restore-default hide" href="#ShowDbStructureComment" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>
<tr>
  <th>
    <label for="ShowDbStructureCreation">Afficher l'horodatage de création</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_ShowDbStructureCreation" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
          <small>Afficher ou masquer une colonne contenant la date de création pour toutes les tables.</small>
      </th>

  <td>
          <span class="checkbox">
        <input type="checkbox" name="ShowDbStructureCreation" id="ShowDbStructureCreation">
      </span>
    
    
    
          <a class="restore-default hide" href="#ShowDbStructureCreation" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>
<tr>
  <th>
    <label for="ShowDbStructureLastUpdate">Afficher l'horodatage de dernière mise à jour</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_ShowDbStructureLastUpdate" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
          <small>Afficher ou masquer une colonne contenant l'horodatage de dernière mise à jour pour toutes les tables.</small>
      </th>

  <td>
          <span class="checkbox">
        <input type="checkbox" name="ShowDbStructureLastUpdate" id="ShowDbStructureLastUpdate">
      </span>
    
    
    
          <a class="restore-default hide" href="#ShowDbStructureLastUpdate" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>
<tr>
  <th>
    <label for="ShowDbStructureLastCheck">Afficher l'horodatage de dernière vérification</label>

          <span class="doc">
        <a href="./doc/html/config.html#cfg_ShowDbStructureLastCheck" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
      </span>
    
    
          <small>Afficher ou masquer une colonne contenant l'horodatage de dernière vérification pour toutes les tables.</small>
      </th>

  <td>
          <span class="checkbox">
        <input type="checkbox" name="ShowDbStructureLastCheck" id="ShowDbStructureLastCheck">
      </span>
    
    
    
          <a class="restore-default hide" href="#ShowDbStructureLastCheck" title="Restaurer la valeur par défaut"><img src="themes/dot.gif" title="Restaurer la valeur par défaut" alt="Restaurer la valeur par défaut" class="icon ic_s_reload"></a>
    
          </td>

  </tr>

              </table>
            </fieldset>
          </div>

                  </div>
      </div>
      </div>
</form>

<script type="text/javascript">
  if (typeof configInlineParams === 'undefined' || !Array.isArray(configInlineParams)) {
    configInlineParams = [];
  }
  configInlineParams.push(function () {
    ;

    $.extend(Messages, {
      'error_nan_p': 'Nombre\u0020non\u0020positif\u0020\u0021',
      'error_nan_nneg': 'Nombre\u0020non\u0020n\u00E9gatif\u0020\u0021',
      'error_incorrect_port': 'Num\u00E9ro\u0020de\u0020port\u0020invalide\u0020\u0021',
      'error_invalid_value': 'Valeur\u0020incorrecte\u0020\u0021',
      'error_value_lte': 'La\u0020valeur\u0020doit\u0020\u00EAtre\u0020\u00E9gale\u0020ou\u0020plus\u0020petite\u0020que\u0020\u0025s\u0020\u0021',
    });

    $.extend(defaultValues, {
      'ShowDbStructureCharset': false,
      'ShowDbStructureComment': false,
      'ShowDbStructureCreation': false,
      'ShowDbStructureLastUpdate': false,
      'ShowDbStructureLastCheck': false
    });
  });
  if (typeof configScriptLoaded !== 'undefined' && configInlineParams) {
    loadInlineConfig();
  }
</script>
</div></div>
  <div id="tableslistcontainer">
    

    <div class="card mb-3" id="tableFilter">
  <div class="card-header">Filtres</div>
  <div class="card-body row row-cols-lg-auto gy-1 gx-3 align-items-center">
    <label class="col-12 col-form-label" for="filterText">Contenant le mot :</label>
    <div class="col-12">
      <input class="form-control" name="filterText" type="text" id="filterText" value="">
    </div>
  </div>
</div>
<form method="post" action="index.php?route=/database/structure" name="tablesForm" id="tablesForm">
<input type="hidden" name="db" value="gestion_absences"><input type="hidden" name="token" value="53732e3b29626d43436e29256678565c">
<div class="table-responsive">
<table class="table table-striped table-hover table-sm w-auto data">
    <thead>
        <tr>
            <th class="d-print-none"></th>
            <th><a href="index.php?route=/database/structure&db=gestion_absences&pos=0&sort=table&sort_order=DESC" title="Tri" onmouseover="$(&#039;.sort_arrow&#039;).toggle();" onmouseout="$(&#039;.sort_arrow&#039;).toggle();">Table <img src="themes/dot.gif" title="" alt="Croissant" class="icon ic_s_asc sort_arrow"> <img src="themes/dot.gif" title="" alt="Décroissant" class="icon ic_s_desc sort_arrow hide"></a></th>
            
                                                                                            <th colspan="7" class="d-print-none">
                Action            </th>
                        <th>
                <a href="index.php?route=/database/structure&db=gestion_absences&pos=0&sort=records&sort_order=DESC" title="Tri">Lignes</a>
                <span class="pma_hint"><img src="themes/dot.gif" title="" alt="" class="icon ic_b_help"><span class="hide">Peut être approximatif. Cliquer sur le nombre pour obtenir le compte exact. Voir <a href="./doc/html/faq.html#faq3-11" target="documentation">FAQ 3.11</a>.</span></span>
            </th>
                            <th><a href="index.php?route=/database/structure&db=gestion_absences&pos=0&sort=type&sort_order=ASC" title="Tri">Type</a></th>
                <th><a href="index.php?route=/database/structure&db=gestion_absences&pos=0&sort=collation&sort_order=ASC" title="Tri">Interclassement</a></th>
            
                                            <th><a href="index.php?route=/database/structure&db=gestion_absences&pos=0&sort=size&sort_order=DESC" title="Tri">Taille</a></th>
                                <th><a href="index.php?route=/database/structure&db=gestion_absences&pos=0&sort=overhead&sort_order=DESC" title="Tri">Perte</a></th>
            
            
            
            
            
                    </tr>
    </thead>
    <tbody>
            <tr id="row_tbl_1" class="is_view" data-filter-row="ABSENCE">
    <td class="text-center d-print-none">
        <input type="checkbox"
            name="selected_tbl[]"
            class="checkall"
            value="absence"
            id="checkbox_tbl_1">
    </td>
    <th>
        <a href="index.php?route=/sql&db=gestion_absences&table=absence&pos=0" title="VIEW">absence</a>
        
    </th>
    
                <td class="text-center d-print-none">
                                    <a id="351be24aa3154abeb916761294b6f8ad_favorite_anchor"
    class="ajax favorite_table_anchor"
    href="index.php?route=/database/structure/favorite-table&db=gestion_absences&ajax_request=1&favorite_table=absence&add_favorite=1"
    title="Ajouter aux tables préférées"
    data-favtargets="1d5fb07a0d7a9e21f5a4acb89fd80e4c">
    <span class="text-nowrap"><img src="themes/dot.gif" title="" alt="" class="icon ic_b_no_favorite">&nbsp;</span>
</a>
        </td>
    
    <td class="text-center d-print-none">
        <a href="index.php?route=/sql&db=gestion_absences&table=absence&pos=0">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Parcourir" alt="Parcourir" class="icon ic_b_browse">&nbsp;Parcourir</span>
        </a>
    </td>
    <td class="text-center d-print-none">
        <a href="index.php?route=/table/structure&db=gestion_absences&table=absence">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Structure" alt="Structure" class="icon ic_b_props">&nbsp;Structure</span>
        </a>
    </td>
    <td class="text-center d-print-none">
        <a href="index.php?route=/table/search&db=gestion_absences&table=absence">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Rechercher" alt="Rechercher" class="icon ic_b_select">&nbsp;Rechercher</span>
        </a>
    </td>

            <td class="insert_table text-center d-print-none">
            <a href="index.php?route=/table/change&db=gestion_absences&table=absence"><span class="text-nowrap"><img src="themes/dot.gif" title="Insérer" alt="Insérer" class="icon ic_b_insrow">&nbsp;Insérer</span></a>
        </td>
                    <td class="text-center d-print-none">
                <a href="index.php?route=/view/create&db=gestion_absences&table=absence"><span class="text-nowrap"><img src="themes/dot.gif" title="Éditer" alt="Éditer" class="icon ic_b_edit">&nbsp;Éditer</span></a>
            </td>
                <td class="text-center d-print-none">
            <a class="ajax drop_table_anchor view" href="index.php?route=/sql" data-post="db=gestion_absences&table=absence&reload=1&purge=1&sql_query=DROP+VIEW+%60absence%60&message_to_show=La+vue+absence+a+%C3%A9t%C3%A9+supprim%C3%A9e.">
                <span class="text-nowrap"><img src="themes/dot.gif" title="Supprimer" alt="Supprimer" class="icon ic_b_drop">&nbsp;Supprimer</span>
            </a>
        </td>
    
                    
                <td class="value tbl_rows font-monospace text-end"
            data-table="absence">
                            <a href="index.php?route=/database/structure/real-row-count&ajax_request=1&db=gestion_absences&table=absence" class="ajax real_row_count">
                    <bdi>
                        ~0
                    </bdi>
                </a>
                        <span class="pma_hint"><img src="themes/dot.gif" title="" alt="" class="icon ic_b_help"><span class="hide">Cette vue contient au moins ce nombre de lignes. Merci de se référer à <a href="./doc/html/config.html#cfg_MaxExactCountViews" target="documentation">documentation</a>.</span></span>
        </td>

                    <td class="text-nowrap">
                                    Vue                            </td>
                            <td class="text-nowrap">
                    ---
                </td>
                    
                    <td class="value tbl_size font-monospace text-end">
                <a href="index.php?route=/table/structure&db=gestion_absences&table=absence#showusage">
                    <span>-</span>&nbsp;<span class="unit"></span>
                </a>
            </td>
            <td class="value tbl_overhead font-monospace text-end">
                -
            </td>
        
        
        
        
        
        
    </tr>
            <tr id="row_tbl_2" data-filter-row="ABSENSE">
    <td class="text-center d-print-none">
        <input type="checkbox"
            name="selected_tbl[]"
            class="checkall"
            value="absense"
            id="checkbox_tbl_2">
    </td>
    <th>
        <a href="index.php?route=/sql&db=gestion_absences&table=absense&pos=0" title="table pour absence">absense</a>
        
    </th>
    
                <td class="text-center d-print-none">
                                    <a id="15f4c1f7bc3732ece8001f427fa070f2_favorite_anchor"
    class="ajax favorite_table_anchor"
    href="index.php?route=/database/structure/favorite-table&db=gestion_absences&ajax_request=1&favorite_table=absense&add_favorite=1"
    title="Ajouter aux tables préférées"
    data-favtargets="16099eac0c166a716f793a89ddb841c9">
    <span class="text-nowrap"><img src="themes/dot.gif" title="" alt="" class="icon ic_b_no_favorite">&nbsp;</span>
</a>
        </td>
    
    <td class="text-center d-print-none">
        <a href="index.php?route=/sql&db=gestion_absences&table=absense&pos=0">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Parcourir" alt="Parcourir" class="icon ic_bd_browse">&nbsp;Parcourir</span>
        </a>
    </td>
    <td class="text-center d-print-none">
        <a href="index.php?route=/table/structure&db=gestion_absences&table=absense">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Structure" alt="Structure" class="icon ic_b_props">&nbsp;Structure</span>
        </a>
    </td>
    <td class="text-center d-print-none">
        <a href="index.php?route=/table/search&db=gestion_absences&table=absense">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Rechercher" alt="Rechercher" class="icon ic_bd_select">&nbsp;Rechercher</span>
        </a>
    </td>

            <td class="insert_table text-center d-print-none">
            <a href="index.php?route=/table/change&db=gestion_absences&table=absense"><span class="text-nowrap"><img src="themes/dot.gif" title="Insérer" alt="Insérer" class="icon ic_b_insrow">&nbsp;Insérer</span></a>
        </td>
                  <td class="text-center d-print-none">
                <a class="truncate_table_anchor ajax" href="index.php?route=/sql" data-post="db=gestion_absences&table=absense&sql_query=TRUNCATE+%60absense%60&message_to_show=La%2Btable%2Babsense%2Ba%2B%25C3%25A9t%25C3%25A9%2Bvid%25C3%25A9e.">
                  <span class="text-nowrap"><img src="themes/dot.gif" title="Vider" alt="Vider" class="icon ic_bd_empty">&nbsp;Vider</span>
                </a>
          </td>
                <td class="text-center d-print-none">
            <a class="ajax drop_table_anchor" href="index.php?route=/sql" data-post="db=gestion_absences&table=absense&reload=1&purge=1&sql_query=DROP+TABLE+%60absense%60&message_to_show=La+table+absense+a+%C3%A9t%C3%A9+supprim%C3%A9e.">
                <span class="text-nowrap"><img src="themes/dot.gif" title="Supprimer" alt="Supprimer" class="icon ic_b_drop">&nbsp;Supprimer</span>
            </a>
        </td>
    
                    
                <td class="value tbl_rows font-monospace text-end"
            data-table="absense">
                            0
                        
        </td>

                    <td class="text-nowrap">
                                    InnoDB
                            </td>
                            <td class="text-nowrap">
                    <dfn title="Unicode (UCA 4.0.0), insensible à la casse">utf8mb4_unicode_ci</dfn>

                </td>
                    
                    <td class="value tbl_size font-monospace text-end">
                <a href="index.php?route=/table/structure&db=gestion_absences&table=absense#showusage">
                    <span>64,0</span>&nbsp;<span class="unit">kio</span>
                </a>
            </td>
            <td class="value tbl_overhead font-monospace text-end">
                -
            </td>
        
        
        
        
        
        
    </tr>
            <tr id="row_tbl_3" data-filter-row="APPEL">
    <td class="text-center d-print-none">
        <input type="checkbox"
            name="selected_tbl[]"
            class="checkall"
            value="appel"
            id="checkbox_tbl_3">
    </td>
    <th>
        <a href="index.php?route=/sql&db=gestion_absences&table=appel&pos=0" title="">appel</a>
        
    </th>
    
                <td class="text-center d-print-none">
                                    <a id="3dcb8a092a0a00b594a145624c6a0709_favorite_anchor"
    class="ajax favorite_table_anchor"
    href="index.php?route=/database/structure/favorite-table&db=gestion_absences&ajax_request=1&favorite_table=appel&add_favorite=1"
    title="Ajouter aux tables préférées"
    data-favtargets="6b77d6ff9180821af81f4ad75fee6ee8">
    <span class="text-nowrap"><img src="themes/dot.gif" title="" alt="" class="icon ic_b_no_favorite">&nbsp;</span>
</a>
        </td>
    
    <td class="text-center d-print-none">
        <a href="index.php?route=/sql&db=gestion_absences&table=appel&pos=0">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Parcourir" alt="Parcourir" class="icon ic_bd_browse">&nbsp;Parcourir</span>
        </a>
    </td>
    <td class="text-center d-print-none">
        <a href="index.php?route=/table/structure&db=gestion_absences&table=appel">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Structure" alt="Structure" class="icon ic_b_props">&nbsp;Structure</span>
        </a>
    </td>
    <td class="text-center d-print-none">
        <a href="index.php?route=/table/search&db=gestion_absences&table=appel">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Rechercher" alt="Rechercher" class="icon ic_bd_select">&nbsp;Rechercher</span>
        </a>
    </td>

            <td class="insert_table text-center d-print-none">
            <a href="index.php?route=/table/change&db=gestion_absences&table=appel"><span class="text-nowrap"><img src="themes/dot.gif" title="Insérer" alt="Insérer" class="icon ic_b_insrow">&nbsp;Insérer</span></a>
        </td>
                  <td class="text-center d-print-none">
                <a class="truncate_table_anchor ajax" href="index.php?route=/sql" data-post="db=gestion_absences&table=appel&sql_query=TRUNCATE+%60appel%60&message_to_show=La%2Btable%2Bappel%2Ba%2B%25C3%25A9t%25C3%25A9%2Bvid%25C3%25A9e.">
                  <span class="text-nowrap"><img src="themes/dot.gif" title="Vider" alt="Vider" class="icon ic_bd_empty">&nbsp;Vider</span>
                </a>
          </td>
                <td class="text-center d-print-none">
            <a class="ajax drop_table_anchor" href="index.php?route=/sql" data-post="db=gestion_absences&table=appel&reload=1&purge=1&sql_query=DROP+TABLE+%60appel%60&message_to_show=La+table+appel+a+%C3%A9t%C3%A9+supprim%C3%A9e.">
                <span class="text-nowrap"><img src="themes/dot.gif" title="Supprimer" alt="Supprimer" class="icon ic_b_drop">&nbsp;Supprimer</span>
            </a>
        </td>
    
                    
                <td class="value tbl_rows font-monospace text-end"
            data-table="appel">
                            0
                        
        </td>

                    <td class="text-nowrap">
                                    InnoDB
                            </td>
                            <td class="text-nowrap">
                    <dfn title="Unicode (UCA 4.0.0), insensible à la casse">utf8mb4_unicode_ci</dfn>

                </td>
                    
                    <td class="value tbl_size font-monospace text-end">
                <a href="index.php?route=/table/structure&db=gestion_absences&table=appel#showusage">
                    <span>64,0</span>&nbsp;<span class="unit">kio</span>
                </a>
            </td>
            <td class="value tbl_overhead font-monospace text-end">
                -
            </td>
        
        
        
        
        
        
    </tr>
            <tr id="row_tbl_4" data-filter-row="CLASSE">
    <td class="text-center d-print-none">
        <input type="checkbox"
            name="selected_tbl[]"
            class="checkall"
            value="classe"
            id="checkbox_tbl_4">
    </td>
    <th>
        <a href="index.php?route=/sql&db=gestion_absences&table=classe&pos=0" title="">classe</a>
        
    </th>
    
                <td class="text-center d-print-none">
                                    <a id="1af080153383444d8f5b3602d7bb11fd_favorite_anchor"
    class="ajax favorite_table_anchor"
    href="index.php?route=/database/structure/favorite-table&db=gestion_absences&ajax_request=1&favorite_table=classe&add_favorite=1"
    title="Ajouter aux tables préférées"
    data-favtargets="5c948741c9c882ed0a1621102ffaa162">
    <span class="text-nowrap"><img src="themes/dot.gif" title="" alt="" class="icon ic_b_no_favorite">&nbsp;</span>
</a>
        </td>
    
    <td class="text-center d-print-none">
        <a href="index.php?route=/sql&db=gestion_absences&table=classe&pos=0">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Parcourir" alt="Parcourir" class="icon ic_b_browse">&nbsp;Parcourir</span>
        </a>
    </td>
    <td class="text-center d-print-none">
        <a href="index.php?route=/table/structure&db=gestion_absences&table=classe">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Structure" alt="Structure" class="icon ic_b_props">&nbsp;Structure</span>
        </a>
    </td>
    <td class="text-center d-print-none">
        <a href="index.php?route=/table/search&db=gestion_absences&table=classe">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Rechercher" alt="Rechercher" class="icon ic_b_select">&nbsp;Rechercher</span>
        </a>
    </td>

            <td class="insert_table text-center d-print-none">
            <a href="index.php?route=/table/change&db=gestion_absences&table=classe"><span class="text-nowrap"><img src="themes/dot.gif" title="Insérer" alt="Insérer" class="icon ic_b_insrow">&nbsp;Insérer</span></a>
        </td>
                  <td class="text-center d-print-none">
                <a class="truncate_table_anchor ajax" href="index.php?route=/sql" data-post="db=gestion_absences&table=classe&sql_query=TRUNCATE+%60classe%60&message_to_show=La%2Btable%2Bclasse%2Ba%2B%25C3%25A9t%25C3%25A9%2Bvid%25C3%25A9e.">
                  <span class="text-nowrap"><img src="themes/dot.gif" title="Vider" alt="Vider" class="icon ic_b_empty">&nbsp;Vider</span>
                </a>
          </td>
                <td class="text-center d-print-none">
            <a class="ajax drop_table_anchor" href="index.php?route=/sql" data-post="db=gestion_absences&table=classe&reload=1&purge=1&sql_query=DROP+TABLE+%60classe%60&message_to_show=La+table+classe+a+%C3%A9t%C3%A9+supprim%C3%A9e.">
                <span class="text-nowrap"><img src="themes/dot.gif" title="Supprimer" alt="Supprimer" class="icon ic_b_drop">&nbsp;Supprimer</span>
            </a>
        </td>
    
                    
                <td class="value tbl_rows font-monospace text-end"
            data-table="classe">
                            14
                        
        </td>

                    <td class="text-nowrap">
                                    InnoDB
                            </td>
                            <td class="text-nowrap">
                    <dfn title="Unicode (UCA 4.0.0), insensible à la casse">utf8mb4_unicode_ci</dfn>

                </td>
                    
                    <td class="value tbl_size font-monospace text-end">
                <a href="index.php?route=/table/structure&db=gestion_absences&table=classe#showusage">
                    <span>16,0</span>&nbsp;<span class="unit">kio</span>
                </a>
            </td>
            <td class="value tbl_overhead font-monospace text-end">
                -
            </td>
        
        
        
        
        
        
    </tr>
            <tr id="row_tbl_5" data-filter-row="COURS">
    <td class="text-center d-print-none">
        <input type="checkbox"
            name="selected_tbl[]"
            class="checkall"
            value="cours"
            id="checkbox_tbl_5">
    </td>
    <th>
        <a href="index.php?route=/sql&db=gestion_absences&table=cours&pos=0" title="table cours">cours</a>
        
    </th>
    
                <td class="text-center d-print-none">
                                    <a id="456c7996e5729627fddf96470e5e0948_favorite_anchor"
    class="ajax favorite_table_anchor"
    href="index.php?route=/database/structure/favorite-table&db=gestion_absences&ajax_request=1&favorite_table=cours&add_favorite=1"
    title="Ajouter aux tables préférées"
    data-favtargets="407ecc29ffb128c41520f87a9d3da1f4">
    <span class="text-nowrap"><img src="themes/dot.gif" title="" alt="" class="icon ic_b_no_favorite">&nbsp;</span>
</a>
        </td>
    
    <td class="text-center d-print-none">
        <a href="index.php?route=/sql&db=gestion_absences&table=cours&pos=0">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Parcourir" alt="Parcourir" class="icon ic_bd_browse">&nbsp;Parcourir</span>
        </a>
    </td>
    <td class="text-center d-print-none">
        <a href="index.php?route=/table/structure&db=gestion_absences&table=cours">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Structure" alt="Structure" class="icon ic_b_props">&nbsp;Structure</span>
        </a>
    </td>
    <td class="text-center d-print-none">
        <a href="index.php?route=/table/search&db=gestion_absences&table=cours">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Rechercher" alt="Rechercher" class="icon ic_bd_select">&nbsp;Rechercher</span>
        </a>
    </td>

            <td class="insert_table text-center d-print-none">
            <a href="index.php?route=/table/change&db=gestion_absences&table=cours"><span class="text-nowrap"><img src="themes/dot.gif" title="Insérer" alt="Insérer" class="icon ic_b_insrow">&nbsp;Insérer</span></a>
        </td>
                  <td class="text-center d-print-none">
                <a class="truncate_table_anchor ajax" href="index.php?route=/sql" data-post="db=gestion_absences&table=cours&sql_query=TRUNCATE+%60cours%60&message_to_show=La%2Btable%2Bcours%2Ba%2B%25C3%25A9t%25C3%25A9%2Bvid%25C3%25A9e.">
                  <span class="text-nowrap"><img src="themes/dot.gif" title="Vider" alt="Vider" class="icon ic_bd_empty">&nbsp;Vider</span>
                </a>
          </td>
                <td class="text-center d-print-none">
            <a class="ajax drop_table_anchor" href="index.php?route=/sql" data-post="db=gestion_absences&table=cours&reload=1&purge=1&sql_query=DROP+TABLE+%60cours%60&message_to_show=La+table+cours+a+%C3%A9t%C3%A9+supprim%C3%A9e.">
                <span class="text-nowrap"><img src="themes/dot.gif" title="Supprimer" alt="Supprimer" class="icon ic_b_drop">&nbsp;Supprimer</span>
            </a>
        </td>
    
                    
                <td class="value tbl_rows font-monospace text-end"
            data-table="cours">
                            0
                        
        </td>

                    <td class="text-nowrap">
                                    InnoDB
                            </td>
                            <td class="text-nowrap">
                    <dfn title="Unicode (UCA 4.0.0), insensible à la casse">utf8mb4_unicode_ci</dfn>

                </td>
                    
                    <td class="value tbl_size font-monospace text-end">
                <a href="index.php?route=/table/structure&db=gestion_absences&table=cours#showusage">
                    <span>64,0</span>&nbsp;<span class="unit">kio</span>
                </a>
            </td>
            <td class="value tbl_overhead font-monospace text-end">
                -
            </td>
        
        
        
        
        
        
    </tr>
            <tr id="row_tbl_6" data-filter-row="ELEVE">
    <td class="text-center d-print-none">
        <input type="checkbox"
            name="selected_tbl[]"
            class="checkall"
            value="eleve"
            id="checkbox_tbl_6">
    </td>
    <th>
        <a href="index.php?route=/sql&db=gestion_absences&table=eleve&pos=0" title="table contenant les information de l&amp;#039;élevé ">eleve</a>
        
    </th>
    
                <td class="text-center d-print-none">
                                    <a id="c16da4ad70df593520193184381b9f21_favorite_anchor"
    class="ajax favorite_table_anchor"
    href="index.php?route=/database/structure/favorite-table&db=gestion_absences&ajax_request=1&favorite_table=eleve&add_favorite=1"
    title="Ajouter aux tables préférées"
    data-favtargets="f725f0c5b9509ff9ff9c2e1ce6cb87ed">
    <span class="text-nowrap"><img src="themes/dot.gif" title="" alt="" class="icon ic_b_no_favorite">&nbsp;</span>
</a>
        </td>
    
    <td class="text-center d-print-none">
        <a href="index.php?route=/sql&db=gestion_absences&table=eleve&pos=0">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Parcourir" alt="Parcourir" class="icon ic_b_browse">&nbsp;Parcourir</span>
        </a>
    </td>
    <td class="text-center d-print-none">
        <a href="index.php?route=/table/structure&db=gestion_absences&table=eleve">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Structure" alt="Structure" class="icon ic_b_props">&nbsp;Structure</span>
        </a>
    </td>
    <td class="text-center d-print-none">
        <a href="index.php?route=/table/search&db=gestion_absences&table=eleve">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Rechercher" alt="Rechercher" class="icon ic_b_select">&nbsp;Rechercher</span>
        </a>
    </td>

            <td class="insert_table text-center d-print-none">
            <a href="index.php?route=/table/change&db=gestion_absences&table=eleve"><span class="text-nowrap"><img src="themes/dot.gif" title="Insérer" alt="Insérer" class="icon ic_b_insrow">&nbsp;Insérer</span></a>
        </td>
                  <td class="text-center d-print-none">
                <a class="truncate_table_anchor ajax" href="index.php?route=/sql" data-post="db=gestion_absences&table=eleve&sql_query=TRUNCATE+%60eleve%60&message_to_show=La%2Btable%2Beleve%2Ba%2B%25C3%25A9t%25C3%25A9%2Bvid%25C3%25A9e.">
                  <span class="text-nowrap"><img src="themes/dot.gif" title="Vider" alt="Vider" class="icon ic_b_empty">&nbsp;Vider</span>
                </a>
          </td>
                <td class="text-center d-print-none">
            <a class="ajax drop_table_anchor" href="index.php?route=/sql" data-post="db=gestion_absences&table=eleve&reload=1&purge=1&sql_query=DROP+TABLE+%60eleve%60&message_to_show=La+table+eleve+a+%C3%A9t%C3%A9+supprim%C3%A9e.">
                <span class="text-nowrap"><img src="themes/dot.gif" title="Supprimer" alt="Supprimer" class="icon ic_b_drop">&nbsp;Supprimer</span>
            </a>
        </td>
    
                    
                <td class="value tbl_rows font-monospace text-end"
            data-table="eleve">
                            16
                        
        </td>

                    <td class="text-nowrap">
                                    InnoDB
                            </td>
                            <td class="text-nowrap">
                    <dfn title="Unicode (UCA 4.0.0), insensible à la casse">utf8mb4_unicode_ci</dfn>

                </td>
                    
                    <td class="value tbl_size font-monospace text-end">
                <a href="index.php?route=/table/structure&db=gestion_absences&table=eleve#showusage">
                    <span>32,0</span>&nbsp;<span class="unit">kio</span>
                </a>
            </td>
            <td class="value tbl_overhead font-monospace text-end">
                -
            </td>
        
        
        
        
        
        
    </tr>
            <tr id="row_tbl_7" data-filter-row="ENSEIGNANT">
    <td class="text-center d-print-none">
        <input type="checkbox"
            name="selected_tbl[]"
            class="checkall"
            value="enseignant"
            id="checkbox_tbl_7">
    </td>
    <th>
        <a href="index.php?route=/sql&db=gestion_absences&table=enseignant&pos=0" title="table pour enseignant">enseignant</a>
        
    </th>
    
                <td class="text-center d-print-none">
                                    <a id="3ac3e5a795913a424bb98674764116c9_favorite_anchor"
    class="ajax favorite_table_anchor"
    href="index.php?route=/database/structure/favorite-table&db=gestion_absences&ajax_request=1&favorite_table=enseignant&add_favorite=1"
    title="Ajouter aux tables préférées"
    data-favtargets="a42e4ad6cf3f72c4177eb555ca08885d">
    <span class="text-nowrap"><img src="themes/dot.gif" title="" alt="" class="icon ic_b_no_favorite">&nbsp;</span>
</a>
        </td>
    
    <td class="text-center d-print-none">
        <a href="index.php?route=/sql&db=gestion_absences&table=enseignant&pos=0">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Parcourir" alt="Parcourir" class="icon ic_b_browse">&nbsp;Parcourir</span>
        </a>
    </td>
    <td class="text-center d-print-none">
        <a href="index.php?route=/table/structure&db=gestion_absences&table=enseignant">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Structure" alt="Structure" class="icon ic_b_props">&nbsp;Structure</span>
        </a>
    </td>
    <td class="text-center d-print-none">
        <a href="index.php?route=/table/search&db=gestion_absences&table=enseignant">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Rechercher" alt="Rechercher" class="icon ic_b_select">&nbsp;Rechercher</span>
        </a>
    </td>

            <td class="insert_table text-center d-print-none">
            <a href="index.php?route=/table/change&db=gestion_absences&table=enseignant"><span class="text-nowrap"><img src="themes/dot.gif" title="Insérer" alt="Insérer" class="icon ic_b_insrow">&nbsp;Insérer</span></a>
        </td>
                  <td class="text-center d-print-none">
                <a class="truncate_table_anchor ajax" href="index.php?route=/sql" data-post="db=gestion_absences&table=enseignant&sql_query=TRUNCATE+%60enseignant%60&message_to_show=La%2Btable%2Benseignant%2Ba%2B%25C3%25A9t%25C3%25A9%2Bvid%25C3%25A9e.">
                  <span class="text-nowrap"><img src="themes/dot.gif" title="Vider" alt="Vider" class="icon ic_b_empty">&nbsp;Vider</span>
                </a>
          </td>
                <td class="text-center d-print-none">
            <a class="ajax drop_table_anchor" href="index.php?route=/sql" data-post="db=gestion_absences&table=enseignant&reload=1&purge=1&sql_query=DROP+TABLE+%60enseignant%60&message_to_show=La+table+enseignant+a+%C3%A9t%C3%A9+supprim%C3%A9e.">
                <span class="text-nowrap"><img src="themes/dot.gif" title="Supprimer" alt="Supprimer" class="icon ic_b_drop">&nbsp;Supprimer</span>
            </a>
        </td>
    
                    
                <td class="value tbl_rows font-monospace text-end"
            data-table="enseignant">
                            4
                        
        </td>

                    <td class="text-nowrap">
                                    InnoDB
                            </td>
                            <td class="text-nowrap">
                    <dfn title="Unicode (UCA 4.0.0), insensible à la casse">utf8mb4_unicode_ci</dfn>

                </td>
                    
                    <td class="value tbl_size font-monospace text-end">
                <a href="index.php?route=/table/structure&db=gestion_absences&table=enseignant#showusage">
                    <span>32,0</span>&nbsp;<span class="unit">kio</span>
                </a>
            </td>
            <td class="value tbl_overhead font-monospace text-end">
                -
            </td>
        
        
        
        
        
        
    </tr>
            <tr id="row_tbl_8" data-filter-row="JUSTIFICATION">
    <td class="text-center d-print-none">
        <input type="checkbox"
            name="selected_tbl[]"
            class="checkall"
            value="justification"
            id="checkbox_tbl_8">
    </td>
    <th>
        <a href="index.php?route=/sql&db=gestion_absences&table=justification&pos=0" title="table pour justification">justification</a>
        
    </th>
    
                <td class="text-center d-print-none">
                                    <a id="6d3d45533e33b71bab6f3d77f1a25f5c_favorite_anchor"
    class="ajax favorite_table_anchor"
    href="index.php?route=/database/structure/favorite-table&db=gestion_absences&ajax_request=1&favorite_table=justification&add_favorite=1"
    title="Ajouter aux tables préférées"
    data-favtargets="0136efc764b0cebb46308f3f51568788">
    <span class="text-nowrap"><img src="themes/dot.gif" title="" alt="" class="icon ic_b_no_favorite">&nbsp;</span>
</a>
        </td>
    
    <td class="text-center d-print-none">
        <a href="index.php?route=/sql&db=gestion_absences&table=justification&pos=0">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Parcourir" alt="Parcourir" class="icon ic_bd_browse">&nbsp;Parcourir</span>
        </a>
    </td>
    <td class="text-center d-print-none">
        <a href="index.php?route=/table/structure&db=gestion_absences&table=justification">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Structure" alt="Structure" class="icon ic_b_props">&nbsp;Structure</span>
        </a>
    </td>
    <td class="text-center d-print-none">
        <a href="index.php?route=/table/search&db=gestion_absences&table=justification">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Rechercher" alt="Rechercher" class="icon ic_bd_select">&nbsp;Rechercher</span>
        </a>
    </td>

            <td class="insert_table text-center d-print-none">
            <a href="index.php?route=/table/change&db=gestion_absences&table=justification"><span class="text-nowrap"><img src="themes/dot.gif" title="Insérer" alt="Insérer" class="icon ic_b_insrow">&nbsp;Insérer</span></a>
        </td>
                  <td class="text-center d-print-none">
                <a class="truncate_table_anchor ajax" href="index.php?route=/sql" data-post="db=gestion_absences&table=justification&sql_query=TRUNCATE+%60justification%60&message_to_show=La%2Btable%2Bjustification%2Ba%2B%25C3%25A9t%25C3%25A9%2Bvid%25C3%25A9e.">
                  <span class="text-nowrap"><img src="themes/dot.gif" title="Vider" alt="Vider" class="icon ic_bd_empty">&nbsp;Vider</span>
                </a>
          </td>
                <td class="text-center d-print-none">
            <a class="ajax drop_table_anchor" href="index.php?route=/sql" data-post="db=gestion_absences&table=justification&reload=1&purge=1&sql_query=DROP+TABLE+%60justification%60&message_to_show=La+table+justification+a+%C3%A9t%C3%A9+supprim%C3%A9e.">
                <span class="text-nowrap"><img src="themes/dot.gif" title="Supprimer" alt="Supprimer" class="icon ic_b_drop">&nbsp;Supprimer</span>
            </a>
        </td>
    
                    
                <td class="value tbl_rows font-monospace text-end"
            data-table="justification">
                            0
                        
        </td>

                    <td class="text-nowrap">
                                    InnoDB
                            </td>
                            <td class="text-nowrap">
                    <dfn title="Unicode (UCA 4.0.0), insensible à la casse">utf8mb4_unicode_ci</dfn>

                </td>
                    
                    <td class="value tbl_size font-monospace text-end">
                <a href="index.php?route=/table/structure&db=gestion_absences&table=justification#showusage">
                    <span>32,0</span>&nbsp;<span class="unit">kio</span>
                </a>
            </td>
            <td class="value tbl_overhead font-monospace text-end">
                -
            </td>
        
        
        
        
        
        
    </tr>
            <tr id="row_tbl_9" data-filter-row="MATIERE">
    <td class="text-center d-print-none">
        <input type="checkbox"
            name="selected_tbl[]"
            class="checkall"
            value="matiere"
            id="checkbox_tbl_9">
    </td>
    <th>
        <a href="index.php?route=/sql&db=gestion_absences&table=matiere&pos=0" title="">matiere</a>
        
    </th>
    
                <td class="text-center d-print-none">
                                    <a id="f88b789f10b61e66545f5e2780e85064_favorite_anchor"
    class="ajax favorite_table_anchor"
    href="index.php?route=/database/structure/favorite-table&db=gestion_absences&ajax_request=1&favorite_table=matiere&add_favorite=1"
    title="Ajouter aux tables préférées"
    data-favtargets="8c508deaefbe2e6e6aaaa90fbf3a877b">
    <span class="text-nowrap"><img src="themes/dot.gif" title="" alt="" class="icon ic_b_no_favorite">&nbsp;</span>
</a>
        </td>
    
    <td class="text-center d-print-none">
        <a href="index.php?route=/sql&db=gestion_absences&table=matiere&pos=0">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Parcourir" alt="Parcourir" class="icon ic_b_browse">&nbsp;Parcourir</span>
        </a>
    </td>
    <td class="text-center d-print-none">
        <a href="index.php?route=/table/structure&db=gestion_absences&table=matiere">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Structure" alt="Structure" class="icon ic_b_props">&nbsp;Structure</span>
        </a>
    </td>
    <td class="text-center d-print-none">
        <a href="index.php?route=/table/search&db=gestion_absences&table=matiere">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Rechercher" alt="Rechercher" class="icon ic_b_select">&nbsp;Rechercher</span>
        </a>
    </td>

            <td class="insert_table text-center d-print-none">
            <a href="index.php?route=/table/change&db=gestion_absences&table=matiere"><span class="text-nowrap"><img src="themes/dot.gif" title="Insérer" alt="Insérer" class="icon ic_b_insrow">&nbsp;Insérer</span></a>
        </td>
                  <td class="text-center d-print-none">
                <a class="truncate_table_anchor ajax" href="index.php?route=/sql" data-post="db=gestion_absences&table=matiere&sql_query=TRUNCATE+%60matiere%60&message_to_show=La%2Btable%2Bmatiere%2Ba%2B%25C3%25A9t%25C3%25A9%2Bvid%25C3%25A9e.">
                  <span class="text-nowrap"><img src="themes/dot.gif" title="Vider" alt="Vider" class="icon ic_b_empty">&nbsp;Vider</span>
                </a>
          </td>
                <td class="text-center d-print-none">
            <a class="ajax drop_table_anchor" href="index.php?route=/sql" data-post="db=gestion_absences&table=matiere&reload=1&purge=1&sql_query=DROP+TABLE+%60matiere%60&message_to_show=La+table+matiere+a+%C3%A9t%C3%A9+supprim%C3%A9e.">
                <span class="text-nowrap"><img src="themes/dot.gif" title="Supprimer" alt="Supprimer" class="icon ic_b_drop">&nbsp;Supprimer</span>
            </a>
        </td>
    
                    
                <td class="value tbl_rows font-monospace text-end"
            data-table="matiere">
                            15
                        
        </td>

                    <td class="text-nowrap">
                                    MyISAM
                            </td>
                            <td class="text-nowrap">
                    <dfn title="Unicode (UCA 4.0.0), insensible à la casse">utf8mb4_unicode_ci</dfn>

                </td>
                    
                    <td class="value tbl_size font-monospace text-end">
                <a href="index.php?route=/table/structure&db=gestion_absences&table=matiere#showusage">
                    <span>2,3</span>&nbsp;<span class="unit">kio</span>
                </a>
            </td>
            <td class="value tbl_overhead font-monospace text-end">
                -
            </td>
        
        
        
        
        
        
    </tr>
            <tr id="row_tbl_10" data-filter-row="NOTIFICATION">
    <td class="text-center d-print-none">
        <input type="checkbox"
            name="selected_tbl[]"
            class="checkall"
            value="notification"
            id="checkbox_tbl_10">
    </td>
    <th>
        <a href="index.php?route=/sql&db=gestion_absences&table=notification&pos=0" title="table notification">notification</a>
        
    </th>
    
                <td class="text-center d-print-none">
                                    <a id="0cfd653d5d3e1e9fdbb644523d77971d_favorite_anchor"
    class="ajax favorite_table_anchor"
    href="index.php?route=/database/structure/favorite-table&db=gestion_absences&ajax_request=1&favorite_table=notification&add_favorite=1"
    title="Ajouter aux tables préférées"
    data-favtargets="9c7d9fac396e611078cd716712b26ba8">
    <span class="text-nowrap"><img src="themes/dot.gif" title="" alt="" class="icon ic_b_no_favorite">&nbsp;</span>
</a>
        </td>
    
    <td class="text-center d-print-none">
        <a href="index.php?route=/sql&db=gestion_absences&table=notification&pos=0">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Parcourir" alt="Parcourir" class="icon ic_bd_browse">&nbsp;Parcourir</span>
        </a>
    </td>
    <td class="text-center d-print-none">
        <a href="index.php?route=/table/structure&db=gestion_absences&table=notification">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Structure" alt="Structure" class="icon ic_b_props">&nbsp;Structure</span>
        </a>
    </td>
    <td class="text-center d-print-none">
        <a href="index.php?route=/table/search&db=gestion_absences&table=notification">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Rechercher" alt="Rechercher" class="icon ic_bd_select">&nbsp;Rechercher</span>
        </a>
    </td>

            <td class="insert_table text-center d-print-none">
            <a href="index.php?route=/table/change&db=gestion_absences&table=notification"><span class="text-nowrap"><img src="themes/dot.gif" title="Insérer" alt="Insérer" class="icon ic_b_insrow">&nbsp;Insérer</span></a>
        </td>
                  <td class="text-center d-print-none">
                <a class="truncate_table_anchor ajax" href="index.php?route=/sql" data-post="db=gestion_absences&table=notification&sql_query=TRUNCATE+%60notification%60&message_to_show=La%2Btable%2Bnotification%2Ba%2B%25C3%25A9t%25C3%25A9%2Bvid%25C3%25A9e.">
                  <span class="text-nowrap"><img src="themes/dot.gif" title="Vider" alt="Vider" class="icon ic_bd_empty">&nbsp;Vider</span>
                </a>
          </td>
                <td class="text-center d-print-none">
            <a class="ajax drop_table_anchor" href="index.php?route=/sql" data-post="db=gestion_absences&table=notification&reload=1&purge=1&sql_query=DROP+TABLE+%60notification%60&message_to_show=La+table+notification+a+%C3%A9t%C3%A9+supprim%C3%A9e.">
                <span class="text-nowrap"><img src="themes/dot.gif" title="Supprimer" alt="Supprimer" class="icon ic_b_drop">&nbsp;Supprimer</span>
            </a>
        </td>
    
                    
                <td class="value tbl_rows font-monospace text-end"
            data-table="notification">
                            0
                        
        </td>

                    <td class="text-nowrap">
                                    InnoDB
                            </td>
                            <td class="text-nowrap">
                    <dfn title="Unicode (UCA 4.0.0), insensible à la casse">utf8mb4_unicode_ci</dfn>

                </td>
                    
                    <td class="value tbl_size font-monospace text-end">
                <a href="index.php?route=/table/structure&db=gestion_absences&table=notification#showusage">
                    <span>48,0</span>&nbsp;<span class="unit">kio</span>
                </a>
            </td>
            <td class="value tbl_overhead font-monospace text-end">
                -
            </td>
        
        
        
        
        
        
    </tr>
            <tr id="row_tbl_11" data-filter-row="PARENTS">
    <td class="text-center d-print-none">
        <input type="checkbox"
            name="selected_tbl[]"
            class="checkall"
            value="parents"
            id="checkbox_tbl_11">
    </td>
    <th>
        <a href="index.php?route=/sql&db=gestion_absences&table=parents&pos=0" title="table pour les information des parents">parents</a>
        
    </th>
    
                <td class="text-center d-print-none">
                                    <a id="c68ad910ed49ac65f21f1bf2c5dbf912_favorite_anchor"
    class="ajax favorite_table_anchor"
    href="index.php?route=/database/structure/favorite-table&db=gestion_absences&ajax_request=1&favorite_table=parents&add_favorite=1"
    title="Ajouter aux tables préférées"
    data-favtargets="9db5b47da13e0e24cfdb6c670c9a4d86">
    <span class="text-nowrap"><img src="themes/dot.gif" title="" alt="" class="icon ic_b_no_favorite">&nbsp;</span>
</a>
        </td>
    
    <td class="text-center d-print-none">
        <a href="index.php?route=/sql&db=gestion_absences&table=parents&pos=0">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Parcourir" alt="Parcourir" class="icon ic_bd_browse">&nbsp;Parcourir</span>
        </a>
    </td>
    <td class="text-center d-print-none">
        <a href="index.php?route=/table/structure&db=gestion_absences&table=parents">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Structure" alt="Structure" class="icon ic_b_props">&nbsp;Structure</span>
        </a>
    </td>
    <td class="text-center d-print-none">
        <a href="index.php?route=/table/search&db=gestion_absences&table=parents">
          <span class="text-nowrap"><img src="themes/dot.gif" title="Rechercher" alt="Rechercher" class="icon ic_bd_select">&nbsp;Rechercher</span>
        </a>
    </td>

            <td class="insert_table text-center d-print-none">
            <a href="index.php?route=/table/change&db=gestion_absences&table=parents"><span class="text-nowrap"><img src="themes/dot.gif" title="Insérer" alt="Insérer" class="icon ic_b_insrow">&nbsp;Insérer</span></a>
        </td>
                  <td class="text-center d-print-none">
                <a class="truncate_table_anchor ajax" href="index.php?route=/sql" data-post="db=gestion_absences&table=parents&sql_query=TRUNCATE+%60parents%60&message_to_show=La%2Btable%2Bparents%2Ba%2B%25C3%25A9t%25C3%25A9%2Bvid%25C3%25A9e.">
                  <span class="text-nowrap"><img src="themes/dot.gif" title="Vider" alt="Vider" class="icon ic_bd_empty">&nbsp;Vider</span>
                </a>
          </td>
                <td class="text-center d-print-none">
            <a class="ajax drop_table_anchor" href="index.php?route=/sql" data-post="db=gestion_absences&table=parents&reload=1&purge=1&sql_query=DROP+TABLE+%60parents%60&message_to_show=La+table+parents+a+%C3%A9t%C3%A9+supprim%C3%A9e.">
                <span class="text-nowrap"><img src="themes/dot.gif" title="Supprimer" alt="Supprimer" class="icon ic_b_drop">&nbsp;Supprimer</span>
            </a>
        </td>
    
                    
                <td class="value tbl_rows font-monospace text-end"
            data-table="parents">
                            0
                        
        </td>

                    <td class="text-nowrap">
                                    InnoDB
                            </td>
                            <td class="text-nowrap">
                    <dfn title="Unicode (UCA 4.0.0), insensible à la casse">utf8mb4_unicode_ci</dfn>

                </td>
                    
                    <td class="value tbl_size font-monospace text-end">
                <a href="index.php?route=/table/structure&db=gestion_absences&table=parents#showusage">
                    <span>32,0</span>&nbsp;<span class="unit">kio</span>
                </a>
            </td>
            <td class="value tbl_overhead font-monospace text-end">
                -
            </td>
        
        
        
        
        
        
    </tr>
        </tbody>
            <tfoot id="tbl_summary_row">
<tr>
    <th class="d-print-none"></th>
    <th class="tbl_num text-nowrap">
                11 tables
    </th>
                <th colspan="7" class="d-print-none">Somme</th>
                                                <th class="value tbl_rows font-monospace text-end"><a href="index.php?route=/database/structure/real-row-count&ajax_request=1&db=gestion_absences&real_row_count_all=true" class="ajax row_count_sum">~49</a></th>
                                                                    <th class="text-center">
            <dfn title="Sur ce serveur MySQL, le moteur de stockage par défaut est MyISAM.">
                MyISAM
            </dfn>
        </th>
        <th>
                            <dfn title="Unicode (UCA 4.0.0), insensible à la casse (Valeur par défaut)">
                    utf8mb4_unicode_ci
                </dfn>
                    </th>
    
                                    <th class="value tbl_size font-monospace text-end">386,3 kio</th>

                                <th class="value tbl_overhead font-monospace text-end">0 o</th>
    
                    </tr>
</tfoot>
    </table>
</div>
  <div class="clearfloat d-print-none">
    <img class="selectallarrow" src="./themes/pmahomme/img/arrow_ltr.png" width="38" height="22" alt="Avec la sélection :">
    <input type="checkbox" id="tablesForm_checkall" class="checkall_box" title="Tout cocher">
    <label for="tablesForm_checkall">Tout cocher</label>
        <select name="submit_mult" style="margin: 0 3em 0 3em;">
        <option value="Avec la sélection :" selected="selected">Avec la sélection :</option>
        <option value="copy_tbl">Copier la table</option>
        <option value="show_create">Afficher la requête de création</option>
        <option value="export">Exporter</option>
                    <optgroup label="Supprimer les données ou la table">
                <option value="empty_tbl">Vider</option>
                <option value="drop_tbl">Supprimer</option>
            </optgroup>
            <optgroup label="Maintenance de la table">
                <option value="analyze_tbl">Analyser la table</option>
                <option value="check_tbl">Vérifier la table</option>
                <option value="checksum_tbl">Somme de contrôle de la table</option>
                <option value="optimize_tbl">Optimiser la table</option>
                <option value="repair_tbl">Réparer la table</option>
            </optgroup>
            <optgroup label="Préfixe">
                <option value="add_prefix_tbl">Ajouter un préfixe à la table</option>
                <option value="replace_prefix_tbl">Remplacer le préfixe de table</option>
                <option value="copy_tbl_change_prefix">Copier la table avec un préfixe</option>
            </optgroup>
                    </select>
    <input type="hidden" name="views[]" value="absence">
</div>

</form>
  <div class="modal fade" id="bulkActionModal" data-bs-backdrop="static" data-bs-keyboard="false"
     tabindex="-1" aria-labelledby="bulkActionLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="bulkActionLabel"></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Annuler"></button>
      </div>
      <div class="modal-body"></div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annuler</button>
        <button type="button" class="btn btn-primary" id="bulkActionContinue">Continuer</button>
      </div>
    </div>
  </div>
</div>

    
  </div>
  <hr>
  <p class="d-print-none">
    <button type="button" class="btn btn-link p-0 jsPrintButton"><span class="text-nowrap"><img src="themes/dot.gif" title="Imprimer" alt="Imprimer" class="icon ic_b_print">&nbsp;Imprimer</span></button>
    <a href="index.php?route=/database/data-dictionary&db=gestion_absences&goto=index.php%3Froute%3D%2Fdatabase%2Fstructure">
      <span class="text-nowrap"><img src="themes/dot.gif" title="Dictionnaire de données" alt="Dictionnaire de données" class="icon ic_b_tblanalyse">&nbsp;Dictionnaire de données</span>
    </a>
  </p>

  <form id="createTableMinimalForm" method="post" action="index.php?route=/table/create" class="card d-print-none lock-page">
  <input type="hidden" name="db" value="gestion_absences"><input type="hidden" name="token" value="53732e3b29626d43436e29256678565c">
  <div class="card-header"><span class="text-nowrap"><img src="themes/dot.gif" title="Créer une nouvelle table" alt="Créer une nouvelle table" class="icon ic_b_table_add">&nbsp;Créer une nouvelle table</span></div>
  <div class="card-body row row-cols-lg-auto g-3">
    <div class="col-12">
      <label for="createTableNameInput" class="form-label">Nom de table</label>
      <input autocomplete="off" type="text" class="form-control" name="table" id="createTableNameInput" maxlength="64" required>
    </div>
    <div class="col-12">
      <label for="createTableNumFieldsInput" class="form-label">Nombre de colonnes</label>
      <input type="number" class="form-control" name="num_fields" id="createTableNumFieldsInput" min="1" value="4" required>
    </div>
    <div class="col-12 align-self-lg-end">
      <input class="btn btn-primary" type="submit" value="Créer">
    </div>
  </div>
</form>

  </div>
      <div id="selflink" class="d-print-none">
      <a href="index.php?route=%2Fdatabase%2Fstructure&amp;db=gestion_absences&amp;server=1" title="Ouvrir une nouvelle fenêtre phpMyAdmin" target="_blank" rel="noopener noreferrer">
                  <img src="themes/dot.gif" title="Ouvrir une nouvelle fenêtre phpMyAdmin" alt="Ouvrir une nouvelle fenêtre phpMyAdmin" class="icon ic_window-new">
              </a>
    </div>
  
  <div class="clearfloat d-print-none" id="pma_errors">
    
  </div>

  
<script data-cfasync="false" type="text/javascript">
// <![CDATA[
var debugSQLInfo = 'null';

// ]]>
</script>


  
  
  </body>
</html>
