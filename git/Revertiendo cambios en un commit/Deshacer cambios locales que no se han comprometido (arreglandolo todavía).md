## Deshacer cambios locales que no se han comprometido

Si ha realizado cambios que no le gustan y aún **no se han confirmado** , haga lo siguiente:

1. En su terminal (Terminal, Git Bash o Símbolo del sistema de Windows), navegue hasta la carpeta de su repositorio de Git.

2. Ejecute **git status** y debería ver el archivo afectado en la lista.

3. Ejecute el siguiente comando, reemplazando 

   nombre de archivo.html

    con la ruta de su archivo (que puede copiar y pegar desde el comando git status):           

   - **git checkout nombre de archivo.html**

4. Ese archivo ahora se ha revertido a la forma en que estaba en la confirmación anterior (antes de sus cambios).

## Deshacer un compromiso específico (que ha sido impulsado)

Si tiene una confirmación específica que desea deshacer, puede revertirla de la siguiente manera:

1. En su terminal (Terminal, Git Bash o Símbolo del sistema de Windows), navegue hasta la carpeta de su repositorio de Git.

2. Ejecute **git status** y asegúrese de tener un árbol de trabajo limpio.

3. Cada confirmación tiene un hash único (que se parece a 

   2f5451f

    ). Necesita encontrar el hash de la confirmación que desea deshacer. Aquí hay dos lugares donde puedes ver el hash de las confirmaciones:           

   - En el historial de confirmaciones en GitHub, Bitbucket o sitio web.
   - En su terminal (Terminal, Git Bash o Símbolo del sistema de Windows) ejecute el comando **git log --oneline**

4. Una vez que conozca el hash de la confirmación que desea deshacer, ejecute el siguiente comando (reemplazando 

   2f5451f

    con el hash de su confirmación):           

   - **git revert 2f5451f --no-editar**
   - **NOTA:** La opción **--no-edit** evita que git le pida que ingrese un mensaje de confirmación. Si no agrega esa opción, terminará en el editor de texto VIM. Para salir de VIM, presione **:** para ingresar al modo de comando, luego **q** para salir y finalmente presione **Retorno** (Mac) o **Intro** (Windows).

5. Esto  realizará una nueva confirmación que es lo opuesto a la confirmación  existente, revirtiendo los archivos a su estado anterior como si nunca  hubieran sido cambiados.

6. Si trabaja con un repositorio remoto, ahora puede enviar esos cambios:           

   - **git push**

## Deshacer su última confirmación (que no ha sido enviada)

Si cometió un error en su última confirmación y aún no lo ha presionado, puede deshacerlo. Por  ejemplo, tal vez agregaste algunos archivos e hiciste una confirmación,  y luego inmediatamente te diste cuenta de que olvidaste algo. Puede deshacer la confirmación y luego realizar una nueva confirmación (correcta). Esto mantendrá su historial más limpio.

1. En su terminal (Terminal, Git Bash o Símbolo del sistema de Windows), navegue hasta la carpeta de su repositorio de Git.
2. Ejecute este comando:           
   - **git reset --soft HEAD~**
   - SUGERENCIA: agregue un número al final para deshacer varias confirmaciones. Por ejemplo, para deshacer las últimas 2 confirmaciones (suponiendo que ambas no hayan sido enviadas), ejecute **git reset --soft HEAD~2**
   - NOTA: **git reset --soft HEAD~** es lo mismo que **git reset --soft HEAD^** que puedes ver en la documentación de Git.
3. Su última confirmación ahora se deshará. Sus  cambios permanecen en su lugar y los archivos vuelven a ser preparados  (por ejemplo, con git add) para que pueda realizar cambios adicionales o  agregar los archivos que faltan. Luego puedes realizar una nueva confirmación.

## Deshacer cambios locales que se han comprometido (pero no impulsados)

Si ha realizado confirmaciones locales que no le gustan y aún **no se han enviado,** puede restablecer las cosas a una buena confirmación anterior. Será como si las malas confirmaciones nunca hubieran ocurrido. Así es cómo:

1. En su terminal (Terminal, Git Bash o Símbolo del sistema de Windows), navegue hasta la carpeta de su repositorio de Git.

2. Ejecute **git status** y asegúrese de tener un árbol de trabajo limpio.

3. Cada confirmación tiene un hash único (que se parece a 

   2f5451f

    ). Necesita encontrar el hash para la última confirmación buena (a la que desea volver). Aquí hay dos lugares donde puedes ver el hash de las confirmaciones:           

   - En el historial de confirmaciones en GitHub, Bitbucket o sitio web.
   - En su terminal (Terminal, Git Bash o Símbolo del sistema de Windows) ejecute el comando 
   - **git log --oneline**

4. Una vez que conozca el hash de la última confirmación buena (a la que desea volver), ejecute el siguiente comando (reemplazando 

   2f5451f

    con el hash de su confirmación):           

   - **reset git 2f5451f**
   - **reset de git --hard 2f5451f**
   - **NOTA:** Si realiza **git reset,** las confirmaciones se eliminarán, pero los cambios aparecerán como no confirmados, lo que le dará acceso al código. Esta  es la opción más segura, porque tal vez quisieras algo de ese código y  ahora puedes realizar cambios y nuevas confirmaciones que son buenas. Sin embargo, a menudo querrás deshacer las confirmaciones y eliminar el código, que es lo que hace **git reset --hard** .

## Haga crecer sus habilidades

Ofrecemos un conjunto completo de cursos de codificación para estudiantes de todos los niveles. Aprenda a través de proyectos del mundo real de la mano de instructores expertos. Consulte nuestros bootcamps y cursos de codificación ahora: