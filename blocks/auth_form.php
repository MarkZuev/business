<div id="ayth_block" class="module">
  <?php
  if (isset($_SESSION["name"])) {
    ?>
    <h2><?php echo $_SESSION["name"]; ?></h2>
    <form method="post">
      <a href="admin/" title="Ссылка на админку, которой на реальном сайте, конечно же, НЕ должно быть" >Админка</a>
      <input class="btn" value="Срочно выйти" type="submit" name="exit" />
    </form>
  <?php } else { ?>
    <h2 style="color: greenyellow">Авторизация</h2>
    <span class="err"><?php echo $message_err; ?></span>

    <form method="post">
      <input name="name" type="text" value="Mark" size="20"/>
      <input name="pass" type="password"  value="123456"  size="20"/>
      <input class="btn" type="submit" value="Ok"/>
    </form>
    <?php
  }
  ?>
</div>

