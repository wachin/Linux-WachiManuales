

## Encontrar: 
##<pre><code>
## y reemplazar por:
## <pre class="linux-code" style="background: url(https://lh3.googleusercontent.com/-E2WZ-k5ArbU/VnnAeX-_qmI/AAAAAAAABDU/i1aaUUYLZh8/s540-Ic42/lincodewachin.gif) 0px 0px no-repeat scroll rgb(231, 232, 233); border-color: rgb(214, 73, 55); border-style: solid; border-width: 1px 1px 1px 20px; font-family: 'UbuntuBeta Mono', 'Ubuntu Mono', 'Courier New', Courier, monospace; font-size: medium; line-height: 22.3999996185303px; margin: 10px; max-height: 500px; min-height: 16px; overflow: auto; padding: 28px 10px 10px; z-index: 10000;"><code>
##
##

no se pudo con lo siguiente:

sed -i 's/"<pre><code>"/"<pre class="linux-code" style="background: url(https://lh3.googleusercontent.com/-E2WZ-k5ArbU/VnnAeX-_qmI/AAAAAAAABDU/i1aaUUYLZh8/s540-Ic42/lincodewachin.gif) 0px 0px no-repeat scroll rgb(231, 232, 233); border-color: rgb(214, 73, 55); border-style: solid; border-width: 1px 1px 1px 20px; font-family: 'UbuntuBeta Mono', 'Ubuntu Mono', 'Courier New', Courier, monospace; font-size: medium; line-height: 22.3999996185303px; margin: 10px; max-height: 500px; min-height: 16px; overflow: auto; padding: 28px 10px 10px; z-index: 10000;"><code>"/' output.html

awk '{gsub(/"<pre><code>"/,"<pre class="linux-code" style="background: url(https://lh3.googleusercontent.com/-E2WZ-k5ArbU/VnnAeX-_qmI/AAAAAAAABDU/i1aaUUYLZh8/s540-Ic42/lincodewachin.gif) 0px 0px no-repeat scroll rgb(231, 232, 233); border-color: rgb(214, 73, 55); border-style: solid; border-width: 1px 1px 1px 20px; font-family: 'UbuntuBeta Mono', 'Ubuntu Mono', 'Courier New', Courier, monospace; font-size: medium; line-height: 22.3999996185303px; margin: 10px; max-height: 500px; min-height: 16px; overflow: auto; padding: 28px 10px 10px; z-index: 10000;"><code>")}' output.html


awk '{sub("<pre><code>","<pre class="linux-code" style="background: url(https://lh3.googleusercontent.com/-E2WZ-k5ArbU/VnnAeX-_qmI/AAAAAAAABDU/i1aaUUYLZh8/s540-Ic42/lincodewachin.gif) 0px 0px no-repeat scroll rgb(231, 232, 233); border-color: rgb(214, 73, 55); border-style: solid; border-width: 1px 1px 1px 20px; font-family: 'UbuntuBeta Mono', 'Ubuntu Mono', 'Courier New', Courier, monospace; font-size: medium; line-height: 22.3999996185303px; margin: 10px; max-height: 500px; min-height: 16px; overflow: auto; padding: 28px 10px 10px; z-index: 10000;"><code>")}' output.html


perl -i -0pe 's/<pre><code>/<pre class="linux-code" style="background: url(https://lh3.googleusercontent.com/-E2WZ-k5ArbU/VnnAeX-_qmI/AAAAAAAABDU/i1aaUUYLZh8/s540-Ic42/lincodewachin.gif) 0px 0px no-repeat scroll rgb(231, 232, 233); border-color: rgb(214, 73, 55); border-style: solid; border-width: 1px 1px 1px 20px; font-family: 'UbuntuBeta Mono', 'Ubuntu Mono', 'Courier New', Courier, monospace; font-size: medium; line-height: 22.3999996185303px; margin: 10px; max-height: 500px; min-height: 16px; overflow: auto; padding: 28px 10px 10px; z-index: 10000;"><code>/' output.html


rpl –vRd –x ‘.html’ ‘www.site.com/loc/file’ ‘www.site.us/~ab/loc2’ *


rpl –vRd –x ‘.html’ ‘<pre><code>’ ‘<pre class="linux-code" style="background: url(https://lh3.googleusercontent.com/-E2WZ-k5ArbU/VnnAeX-_qmI/AAAAAAAABDU/i1aaUUYLZh8/s540-Ic42/lincodewachin.gif) 0px 0px no-repeat scroll rgb(231, 232, 233); border-color: rgb(214, 73, 55); border-style: solid; border-width: 1px 1px 1px 20px; font-family: 'UbuntuBeta Mono', 'Ubuntu Mono', 'Courier New', Courier, monospace; font-size: medium; line-height: 22.3999996185303px; margin: 10px; max-height: 500px; min-height: 16px; overflow: auto; padding: 28px 10px 10px; z-index: 10000;"><code>’ *

rpl –i –w ‘<pre><code>’ ‘<pre class="linux-code" style="background: url(https://lh3.googleusercontent.com/-E2WZ-k5ArbU/VnnAeX-_qmI/AAAAAAAABDU/i1aaUUYLZh8/s540-Ic42/lincodewachin.gif) 0px 0px no-repeat scroll rgb(231, 232, 233); border-color: rgb(214, 73, 55); border-style: solid; border-width: 1px 1px 1px 20px; font-family: 'UbuntuBeta Mono', 'Ubuntu Mono', 'Courier New', Courier, monospace; font-size: medium; line-height: 22.3999996185303px; margin: 10px; max-height: 500px; min-height: 16px; overflow: auto; padding: 28px 10px 10px; z-index: 10000;"><code>’ output.html




escribe o pega
escribe o pega
escribe o pega</code></pre>
