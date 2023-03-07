## Props

<table class="table table-bordered table-striped">
    <thead>
    <tr>
        <th>prop</th>
        <th>type</th>
        <th>required</th>
        <th>default</th>
        <th>possible values</th>
        <th>description</th>
    </tr>
    </thead>
    <tbody>
        <tr>
          <td>label</td>
          <td>string</td>
          <td>no</td>
          <td></td>
          <td></td>
          <td>Text field label</td>
        </tr>
        <tr>
          <td>textFieldId</td>
          <td>string</td>
          <td>no</td>
          <td></td>
          <td></td>
          <td>The id for the text field</td>
        </tr>	
         <tr>
          <td>value</td>
          <td>string</td>
          <td>no</td>
          <td></td>
          <td></td>
          <td>The value of the text field</td>
        </tr>
        <tr>
          <td>placeholder</td>
          <td>string</td>
          <td>no</td>
          <td></td>
          <td></td>
          <td>The placeholder for the text field </td>
        </tr>
         <tr>
          <td>hintText</td>
          <td>string</td>
          <td>no</td>
          <td></td>
          <td></td>
          <td>The hint text for the text field</td>
        </tr>
          <tr>
          <td>autocomplete</td>
          <td>string</td>
          <td>no</td>
          <td>off</td>
          <td>'on' | 'off'</td>
          <td>The autocomplete attribute for the text field </td>
        </tr>
           <tr>
          <td>autofocus</td>
          <td>boolean</td>
          <td>no</td>
          <td>false</td>
          <td>true | false</td>
          <td>Flag to determine whether the text field will be focussed initially</td>
        </tr>
           <tr>
          <td>disabled</td>
          <td>boolean</td>
          <td>no</td>
          <td>false</td>
          <td>true | false</td>
          <td>Flag to determine whether the text field will be disabled</td>
        </tr>
           <tr>
          <td>readonly</td>
          <td>boolean</td>
          <td>no</td>
          <td>false</td>
          <td>true | false</td>
          <td>Flag to determine whether the text field will be readonly</td>
        </tr>
              <tr>
          <td>required</td>
          <td>boolean</td>
          <td>no</td>
          <td>false</td>
          <td>true | false</td>
          <td>Flag to determine whether the text field will be required field</td>
        </tr>
          <tr>
          <td>labelPartAttribute</td>
          <td>string</td>
          <td>no</td>
          <td>text-field-label</td>
          <td></td>
          <td>The part name for label tag  </td>
        </tr>
             <tr>
          <td>iconPartAttribute</td>
          <td>string</td>
          <td>no</td>
          <td>text-field-icon</td>
          <td></td>
          <td>The part name for container tag</td>
        </tr>
              <tr>
          <td>hintTextPartAttribute</td>
          <td>string</td>
          <td>no</td>
          <td>text-field-hint-text</td>
          <td></td>
          <td>The part name for hint text tag </td>
        </tr>
              <td>textFieldPartAttribute</td>
          <td>string</td>
          <td>no</td>
          <td>text-field-input</td>
          <td></td>
          <td>The part name for text field tag </td>
        </tr>
             <tr>
          <td>minLength</td>
          <td>number</td>
          <td>no</td>
          <td></td>
          <td></td>
          <td>The min length for the text field</td>
        </tr>
           <tr>
          <td>maxLength</td>
          <td>number</td>
          <td>no</td>
          <td></td>
          <td></td>
          <td>The max length for the text field content</td>
        </tr>
               <tr>
          <td>clearField</td>
          <td>boolean</td>
          <td>no</td>
          <td>false</td>
          <td>true | false</td>
          <td>Flag to clear text field </td>
        </tr>
           <tr>
          <td>error</td>
          <td>boolean</td>
          <td>no</td>
          <td>false</td>
          <td>true | false</td>
          <td>Flag to indicate error in input field </td>
        </tr>
           <tr>
          <td>changeHandler</td>
          <td>string</td>
          <td>no</td>
          <td></td>
          <td></td>
          <td>The name of the custom change handler event </td>
        </tr>
                  <tr>
          <td>clickIconHandler</td>
          <td>string</td>
          <td>no</td>
          <td></td>
          <td></td>
          <td>The name of the custom click handler event </td>
        </tr>
    </tbody>
</table>
