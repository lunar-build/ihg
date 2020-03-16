<div class="filters">
    {{-- Only show first-of-type, when closed --}}
    <div id="{{$filter_type}}-filter" class="post_filter" data-toggle="closed">
        <p id="filter-label" data-selected="selected" data-value="{{str_replace(home_url(), '', $default['value'])}}">Category: {{ html_entity_decode($default['label'])}}</p>
        <div class="modal modal--hide dropdown">
            @php
                $current_id = get_queried_object()->term_id;
            @endphp
            <div 
                class="filter-options" 
                role="listbox" 
                aria-labelledby="filter-label" 
                aria-roledescription="A list of news article filters"
                aria-activedescendant="{{$current_id}}"
            >
                <p 
                    class="filter-option" 
                    data-value="/whats-new"
                    aria-selected="{{empty($current_id) ? 'true' : 'false'}}"
                >
                    All
                </p>
                @foreach ($filters as $f)
                    <p 
                        class="filter-option" 
                        data-value="{{str_replace(home_url(), '', get_term_link($f->term_id))}}"
                        aria-selected="{{$current_id == $f->term_id ? 'true' : 'false'}}"
                    >
                    {{html_entity_decode($f->name)}}</p>
                @endforeach
            </div>
        </div>
    </div>
</div>
