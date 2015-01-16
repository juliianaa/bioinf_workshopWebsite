<%-- 
    Document   : technasiumTable
    Created on : Jan 15, 2015, 1:13:23 PM
    Author     : mkslofstra
--%>
<div class="introduction" id="introduction">
    <h1>Je bevindingen</h1>
    <p>Vul hier in welk voorwerp bij welk persoon hoort. </p>

    <script src="js/jquery.cookie.js" type="text/javascript"></script>
    <script src="js/technasiumTable.js" type="text/javascript"></script>
    <table id="findings">
        <tr>
            <td>                        </td>   
            <td>De Manager       </td> 
            <td>De Labmedewerker  </td>   
            <td>De Magazijnmedewerkster </td>
        </tr>
        <tr>
            <td>Vingerafdruk    </td>   
            <td>    <input type="checkbox" name="check" value="check" data-row="1" data-selected = "0" data-column = "1" id = "1" class="check"> </td> 
            <td> <input type="checkbox" name="check" value="check" data-row="1" data-selected = "0" data-column = "2" id="2" class="check">   </td>   
            <td>       <input type="checkbox" name="check" value="check" data-row="1" data-selected = "0" data-column = "3" id="3" class="check"></td>
        </tr>
        <tr>
            <td>Haar </td>   
            <td>      <input type="checkbox" name="check" value="check" data-row="2" data-selected = "0" data-column = "1" id='4' class="check">                   </td> 
            <td>      <input type="checkbox" name="check" value="check" data-row="2" data-selected = "0" data-column = "2" id="5" class="check">        </td>   
            <td>       <input type="checkbox" name="check" value="check" data-row="2" data-selected = "0" data-column = "3" id="6" class="check">                 </td>
        </tr>
        <tr>
            <td>Bloed               </td>   
            <td>    <input type="checkbox" name="check" value="check" data-row="3" data-selected = "0" data-column = "1" id="7" class="check">                  </td>
            <td>        <input type="checkbox" name="check" value="check" data-row="3" data-selected = "0" data-column = "2" id="8" class="check">          </td>   
            <td>          <input type="checkbox" name="check" value="check" data-row="1" data-selected = "0" data-column = "3" id="9" class="check">              </td>
        </tr>
        <tr><td>Speekselspoor      </td>   
            <td>    <input type="checkbox" name="check" value="check" data-row="4" data-selected = "0" data-column = "1" id="10" class="check">          </td> 
            <td>           <input type="checkbox" name="check" value="check" data-row="4" data-selected = "0" data-column = "2" id="11" class="check">       </td>   
            <td>  <input type="checkbox" name="check" value="check" data-row="4" data-selected = "0" data-column = "3" id="12" class="check">                      </td>
        </tr>
    </table>
    <button id="saveTable">Opslaan</button>
    <button id="getTable">Laden</button>
</div>