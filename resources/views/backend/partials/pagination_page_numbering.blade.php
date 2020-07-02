<div class="custom_pagination col-sm-12 mb-2" style="display: none;">
  <div class="row">    
    @if(isset($where) && $total > 0)

      <div class="alert alert-success" style="height: 38px; padding: 8px; margin-bottom: 8px;">
        <span class="text-success">Total <strong>{{ $total }}</strong> entities found</span>
      </div>

    @elseif(!isset($where))

      <div class="col-md-6 col-sm-12 px-0">
        <label style="display: inline-block;">Show 
        <select class="form-control form-control-sm" style="display: inline-block; width: 75px; cursor: pointer;" select  onchange="location = this.value;">
          <option value="{{ route($route) }}?items=20&page=1" {{ $items == 20 ? 'selected' : '' }}>20</option>
          <option value="{{ route($route) }}?items=50&page=1" {{ $items == 50 ? 'selected' : '' }}>50</option>
          <option value="{{ route($route) }}?items=100&page=1" {{ $items == 100 ? 'selected' : '' }}>100</option>
          <option value="{{ route($route) }}?items=250&page=1" {{ $items == 250 ? 'selected' : '' }}>250</option>
        </select> entries</label>
      </div>
      <div class="col-sm-12 col-md-6 px-0 text-right">
        <label style="display: inline-block;" class="w-100">Search:
          <input id="my-table-search" style="display: inline-block; width: 150px;" type="search" class="form-control form-control-sm" placeholder="" aria-controls="datatable">
        </label>
      </div>

    @endif
  </div>
</div>