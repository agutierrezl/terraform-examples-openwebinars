#!/bin/bash
yum install -y php70 httpd24

cat <<'EOF' >> /var/www/html/index.php
<?php
phpinfo();
?>
EOF

service httpd restart
