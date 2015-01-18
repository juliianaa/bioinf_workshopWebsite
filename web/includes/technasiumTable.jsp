<%-- 
    Document   : technasiumTable
    Created on : Jan 15, 2015, 1:13:23 PM
    Author     : mkslofstra (making table load previous submitted data) & mldubbelaar (layout page)
--%>
<div class="introduction" id="introduction">
    <h1>Je bevindingen</h1>
    <p>Vul hier in welk bewijs bij welke persoon hoort. </p>
    <script src="js/jquery.cookie.js" type="text/javascript"></script>
    <script src="js/technasiumTable.js" type="text/javascript"></script>
    <table id="findings">
        <tr>
            <td></td>   
            <td>De Manager              </td> 
            <td>De Labmedewerker        </td>   
            <td>De Magazijnmedewerkster </td>
        </tr>
        <tr>
            <td>Vingerafdruk </td>   
            <td><input type="checkbox" name="check" value="check" id="check1" class="check"></td> 
            <td><input type="checkbox" name="check" value="check" id="check2" class="check"></td>   
            <td><input type="checkbox" name="check" value="check" id="check3" class="check"></td>
        </tr>
        <tr>
            <td>Haar </td>   
            <td><input type="checkbox" name="check" value="check" id='check4' class="check"></td> 
            <td><input type="checkbox" name="check" value="check" id="check5" class="check"></td>   
            <td><input type="checkbox" name="check" value="check" id="check6" class="check"></td>
        </tr>
        <tr>
            <td>Bloed </td>   
            <td><input type="checkbox" name="check" value="check" id="check7" class="check"></td>
            <td><input type="checkbox" name="check" value="check" id="check8" class="check"></td>   
            <td><input type="checkbox" name="check" value="check" id="check9" class="check"></td>
        </tr>
        <tr><td>Speekselspoor </td>   
            <td><input type="checkbox" name="check" value="check" id="check10" class="check"></td> 
            <td><input type="checkbox" name="check" value="check" id="check11" class="check"></td>   
            <td><input type="checkbox" name="check" value="check" id="check12" class="check"></td>
        </tr>
    </table>
</div>