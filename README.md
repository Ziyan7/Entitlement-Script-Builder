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


