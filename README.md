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
          <td>listType</td>
          <td>string</td>
          <td>no</td>
          <td>Ordered</td>
          <td>'Ordered' | 'Unordered'</td>
          <td>The type of list to render</td>
        </tr>
        <tr>
          <td>listItems</td>
          <td>ListItemType[]</td>
          <td>no</td>
          <td></td>
          <td></td>
          <td>The list items</td>
        </tr>		
           <tr>
          <td>overrideDefaultListStyles</td>
          <td>boolean</td>
          <td>no</td>
          <td>false</td>
          <td>true | false</td>
          <td>Flag to determine whether or not the default list styles need to be applied </td>
        </tr>
             <tr>
          <td>showBorder</td>
          <td>boolean</td>
          <td>no</td>
          <td>false</td>
          <td>true | false</td>
          <td>Flag to determine whether or not to show border on list elements</td>
        </tr>
         <tr>
          <td>borderPosition</td>
          <td>string</td>
          <td>no</td>
          <td>All</td>
          <td>'All' | 'Top' | 'Left' | 'Bottom' | 'Right'</td>
          <td>Where to show the border </td>
        </tr>      
        <tr>
          <td>borderStyle</td>
          <td>string</td>
          <td>no</td>
          <td>solid</td>
          <td>'solid' | 'dashed' | 'dotted' | 'double' | 'hidden' | 'none'</td>
          <td>The border style  </td>
        </tr>      
        <tr>
          <td>containerPartName</td>
          <td>string</td>
          <td>no</td>
          <td>webcl-list-container</td>
          <td></td>
          <td>The part name for the container </td>
        </tr>      
        <tr>
          <td>listPartName</td>
          <td>string</td>
          <td>no</td>
          <td>webcl-list</td>
          <td></td>
          <td>The part name for the list </td>
        </tr>
    </tbody>
</table>

## ListItemType Props

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
          <td>id</td>
          <td>string/number</td>
          <td>no</td>
          <td></td>
          <td></td>
          <td>The id of the list element</td>
        </tr>
        <tr>
          <td>listLabel</td>
          <td>string</td>
          <td>no</td>
          <td></td>
          <td></td>
          <td>The list label </td>
        </tr>	
         <tr>
          <td>isAnchor</td>
          <td>boolean</td>
          <td>no</td>
          <td>false</td>
          <td>true | false</td>
          <td>Flag to determine whether or not to render the content as an anchor</td>
        </tr>	
          <tr>
          <td>isButton</td>
          <td>boolean</td>
          <td>no</td>
          <td>false</td>
          <td>true | false</td>
          <td>Flag to determine whether or not to render the content as a button</td>
        </tr>	
          <tr>
          <td>href</td>
          <td>string</td>
          <td>no</td>
          <td></td>
          <td></td>
          <td>The href for the anchor element</td>
        </tr>
        <tr>
          <td>leftSlot</td>
          <td>Slot</td>
          <td>no</td>
          <td></td>
          <td></td>
          <td>Slot for the left content</td>
        </tr>
           <tr>
          <td>rightSlot</td>
          <td>Slot</td>
          <td>no</td>
          <td></td>
          <td></td>
          <td>Slot for the right content</td>
        </tr>
          <tr>
          <td>btnClickHandler</td>
          <td>Function</td>
          <td>no</td>
          <td></td>
          <td></td>
          <td>The handler to be called when the button is clicked </td>
        </tr>
            <tr>
          <td>listItemPartName</td>
          <td>string</td>
          <td>no</td>
          <td></td>
          <td></td>
          <td>The part name for the list item </td>
        </tr>
         <tr>
          <td>contentPartName</td>
          <td>string</td>
          <td>no</td>
          <td></td>
          <td></td>
          <td>The part name for the list item content</td>
        </tr>
          <tr>
          <td>listLabelPartName</td>
          <td>string</td>
          <td>no</td>
          <td></td>
          <td></td>
          <td>The part name for the list item label</td>
        </tr>
    </tbody>
</table>

