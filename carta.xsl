<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="5.0" encoding="UTF-8" indent="yes"/>
  
  <xsl:template match="/">
      <section>
        <h3>Pizzas</h3>
        <xsl:for-each select="menu/pizzas/pizza">
        <div class="dropdown">
          <xsl:variable name="id" select="id" />
          <table>
            <tr>
              <td rowspan="4" colspan="4"><img alt="No se puede mostrar la imagen">
                <xsl:attribute name="src">
                  <xsl:value-of select="@imagen"/>
                </xsl:attribute></img>
              </td>
              <td colspan="6"><xsl:value-of select="@nombre"/></td>
              <td><button onClick="showInfo('{$id}')">?</button></td>
            </tr>
            <tr>
              <td rowspan="3" colspan="6">
                <p>Ingredientes: 
                  <xsl:value-of select="ingrediente" separator=", " />
                </p>
              </td>
              <td>
                <button onclick="increase('{$id}')">+</button>
              </td>
            </tr>
            <tr>
              <td>
                <input type="number">                
                  <xsl:attribute name="readonly">readonly</xsl:attribute>
                  <xsl:attribute name="id">
                    <xsl:value-of select="@id"/>
                  </xsl:attribute>
                </input>
              </td>
            </tr>
            <tr>
              <td>
                <button onclick="decrease('{$id}')">-</button>
              </td>
            </tr>
          </table>
          <xsl:for-each select="valorNutricional">
            <div class="dropdown-content" id="'{$id}'">
              <span>kcal: <xsl:value-of select="@kcal"/> proteinas: <xsl:value-of select="@proteinas"/> grasas: <xsl:value-of select="@grasas"/> saturadas: <xsl:value-of select="@saturadas"/> azúcares: <xsl:value-of select="@azucares"/></span>
            </div>
          </xsl:for-each>
        </div>

        </xsl:for-each>
      </section>

      <section>
        <h3>Bebidas</h3>
        <xsl:for-each select="menu/bebidas/bebida">
          <div class="dropdown">
            <xsl:variable name="id" select="id" />
            <table>
              <tr>
                <th rowspan="4">
                  <xsl:value-of select="@nombre"/>
                </th>
              </tr>
              <tr>
                <td>
                  <button onClick="showInfo('{$id}')">?</button>
                </td>
                <td>
                  <button onClick="decrease('{$id}')">-</button>
                </td>
                <td>
                  <input type="number">
                    <xsl:attribute name="readonly">readonly</xsl:attribute>
                    <xsl:attribute name="id">
                      <xsl:value-of select="@id"/>
                    </xsl:attribute>
                  </input>
                </td>
                <td>
                  <button onClick="increase('{$id}')">+</button>
                </td>
              </tr>
            </table>
            <xsl:for-each select="valorNutricional">
              <div class="dropdown-content" id="'{$id}'">
                <span>
                  kcal: <xsl:value-of select="@kcal"/> proteinas: <xsl:value-of select="@proteinas"/> grasas: <xsl:value-of select="@grasas"/> saturadas: <xsl:value-of select="@saturadas"/> azúcares: <xsl:value-of select="@azucares"/>
                </span>
              </div>
            </xsl:for-each>
          </div>
        </xsl:for-each>
      </section>
      
      <section>
        <h3>Entrantes</h3>
        <xsl:for-each select="menu/entrantes/entrante">
          <div class="dropdown">
            <xsl:variable name="id" select="id" />
            <table>
              <tr>
                <th rowspan="4">
                  <xsl:value-of select="@nombre"/>
                </th>
              </tr>
              <tr>
                <td>
                  <button onClick="showInfo('{$id}')">?</button>
                </td>
                <td>
                  <button onClick="decrease('{$id}')">-</button>
                </td>
                <td>
                  <input type="number">
                    <xsl:attribute name="readonly">readonly</xsl:attribute>
                    <xsl:attribute name="id">
                      <xsl:value-of select="@id"/>
                    </xsl:attribute>
                  </input>
                </td>
                <td>
                  <button onClick="increase('{$id}')">+</button>
                </td>
              </tr>
            </table>
            <xsl:for-each select="valorNutricional">
              <div class="dropdown-content" id="'{$id}'">
                <span>
                  kcal: <xsl:value-of select="@kcal"/> proteinas: <xsl:value-of select="@proteinas"/> grasas: <xsl:value-of select="@grasas"/> saturadas: <xsl:value-of select="@saturadas"/> azúcares: <xsl:value-of select="@azucares"/>
                </span>
              </div>
            </xsl:for-each>
          </div>
        </xsl:for-each>
      </section>
      
      <section>
        <h3>Postres</h3>
        <xsl:for-each select="menu/postres/postre">
          <div class="dropdown">
            <xsl:variable name="id" select="id" />
            <table>
              <tr>
                <th rowspan="4">
                  <xsl:value-of select="@nombre"/>
                </th>
              </tr>
              <tr>
                <td>
                  <button onClick="showInfo('{$id}')">?</button>
                </td>
                <td>
                  <button onClick="decrease('{$id}')">-</button>
                </td>
                <td>
                  <input type="number">
                    <xsl:attribute name="readonly">readonly</xsl:attribute>
                    <xsl:attribute name="id">
                      <xsl:value-of select="@id"/>
                    </xsl:attribute>
                  </input>
                </td>
                <td>
                  <button onClick="increase('{$id}')">+</button>
                </td>
              </tr>
            </table>
            <xsl:for-each select="valorNutricional">
              <div class="dropdown-content" id="'{$id}'">
                <span>
                  kcal: <xsl:value-of select="@kcal"/> proteinas: <xsl:value-of select="@proteinas"/> grasas: <xsl:value-of select="@grasas"/> saturadas: <xsl:value-of select="@saturadas"/> azúcares: <xsl:value-of select="@azucares"/>
                </span>
              </div>
            </xsl:for-each>
          </div>
        </xsl:for-each>
      </section>

  </xsl:template>  
</xsl:stylesheet>