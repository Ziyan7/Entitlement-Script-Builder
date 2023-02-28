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
          <td>desktopImages</td>
          <td>Object</td>
          <td>yes</td>
          <td></td>
          <td></td>
          <td>Object containing desktop image</td>
        </tr>
        <tr>
          <td>mobileImages</td>
          <td>Object</td>
          <td>yes</td>
          <td></td>
          <td></td>
          <td>Object containing mobile image</td>
        </tr>
        </tr>
         <tr>
          <td>textSlot</td>
          <td>Array[object]</td>
          <td>no</td>
          <td></td>
          <td></td>
          <td>An Array of object that allows user to slot details</td>
        </tr>
    </tbody>
</table>

## Text Slot Props

<table class="table table-bordered table-striped">
    <thead>
    <tr>
        <th>name</th>
        <th>type</th>
        <th>required</th>
        <th>possible values</th>
        <th>description</th>
    </tr>
    </thead>
    <tbody>
        <tr>
          <td>dataStart</td>
          <td>Number</td>
          <td>yes</td>
          <td></td>
          <td>Scroll point at which slot elements should be rendered</td>
        </tr>
        <tr>
            <td>dataEnd</td>
            <td>Number</td>
            <td>yes</td>
            <td></td>
            <td>From which image number, the custom elemnet should start coming up on screen while scrolling</td>
        </tr>
        <tr>
            <td>slotName</td>
            <td>String</td>
            <td>yes</td>
            <td></td>
            <td>A Slot which can render a HTMLElement or a component</td>
      </tr>
    </tbody>
</table>
