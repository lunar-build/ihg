<div class="flex-content">
    @foreach ($content as $block) 
    @php $type = $block['acf_fc_layout']; @endphp
        <section class="{{$type}}">
            @if ($type == 'text')
                @if ($block['Heading'])
                    <h4 class="spaced-text uppercase">{{$block['Heading']}}</h4>
                @endif
                @if ($block['Paragraph'])
                    <p>{!! $block['Paragraph'] !!}</p>
                @endif
            @endif
            @if ($type == 'quote')
                <blockquote>
                    &ldquo;{{$block['text']}}&rdquo;
                </blockquote>
            @endif
            @if ($type == 'images')
                <figure>
                    @foreach ($block['columns'] as $img)
                        {!! App::create_responsive_image($img['image']) !!}
                    @endforeach
                    @if ($block['caption'])
                        <figcaption>{{$block['caption']}}</figcaption>
                    @endif
                </figure>
            @endif
        </section>
    @endforeach
</div>