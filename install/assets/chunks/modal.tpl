/**
 * modal
 *
 * модальное окно с изменяемым контентом
 *
 * @category	chunk
 * @internal @modx_category ROOT Template
 */
<!-- Button trigger modal -->
<button type="button" class="[+btn-open-class+]" data-toggle="modal" data-target="#[+id+]">
 [+btn-open-text+]
</button>

<!-- Modal -->
<div class="modal fade" id="[+id+]" tabindex="-1" role="dialog" aria-labelledby="[+aria-label+]" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">[+title+]</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Закрыть">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        [+content+]
      </div>
    </div>
  </div>
</div>