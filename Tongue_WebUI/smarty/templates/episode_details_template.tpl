<table class="eppisode_details_table">
    <tr>
        <th class="details_table_head">{$file.filename} Details</th>
    </tr>
    <tr>
        <td class="details_col">
            <div class="details_div">
                <a href="opt/video_player.php?video={$file.id}&amp;table=video_files" target="_blank")">Play!</a>
                </br>
                {$file.filename}
                Episode Details:
                <ul>
                    <li>Run Time: {$file.runtime} Minutes</li>
                    <li>Dimensions: {$file.dimensions}</li>
                </ul>
            </div>
        </td>
    </tr>
</table>



