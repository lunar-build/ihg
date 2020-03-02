<select id="{{$filter_type}}-filter" class="post_filter" name="{{$filter_type}}">
    <option value="*">All</option>
    @foreach ($filters as $f)
<option value="{{str_replace(home_url(), '', get_term_link($f->term_id))}}">{{html_entity_decode($f->name)}}</option>
    @endforeach
</select>