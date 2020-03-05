<div class="flex-content">
    @if (isset($content)) 
        @foreach ($content as $block) 
        @php $type = $block['acf_fc_layout']; @endphp
            <section class="{{$type}} {{$type != 'images' ? 'content-container' : ''}}">
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
                        <div class="images-container">
                            @foreach ($block['columns'] as $img)
                                <div class="img-container">{!! App::create_responsive_image($img['image']) !!}</div>
                            @endforeach
                        </div>
                        @if ($block['caption'])
                            <figcaption>{{$block['caption']}}</figcaption>
                        @endif
                    </figure>
                @endif
            </section>
        @endforeach
    @endif
</div>