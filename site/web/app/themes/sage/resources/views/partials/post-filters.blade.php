<div class="filters">
    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" viewBox="0 0 25 25">
        <g fill="none" fill-rule="evenodd" stroke="#FFF" stroke-linecap="square" stroke-width="3" transform="rotate(45 8.761 13.959)">
            <line x1="14" x2="14" y1="14"/>
            <line x1="14" y1="14" y2="14"/>
        </g>
    </svg>
    {{-- Only show first-of-type, when closed --}}
    <div id="{{$filter_type}}-filter" class="post_filter" data-toggle="closed">
        <p data-selected="selected" data-value="{{str_replace(home_url(), '', $default['value'])}}">Category: {{ html_entity_decode($default['label'])}}</p>
        <div class="modal modal--hide">
            <div class="filter-options">
                @php
                    $current_id = get_queried_object()->term_id;
                @endphp
                <p 
                    class="filter-option" 
                    data-value="/whats-new"
                    data-selected="{{empty($current_id) ? 'selected' : ''}}"
                >
                    All
                </p>
                @foreach ($filters as $f)
                    <p 
                        class="filter-option" 
                        data-value="{{str_replace(home_url(), '', get_term_link($f->term_id))}}"
                        data-selected="{{$current_id == $f->term_id ? 'selected' : ''}}"
                    >
                    {{html_entity_decode($f->name)}}</p>
                @endforeach
            </div>
        </div>
    </div>
</div>
