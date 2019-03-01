# ウィンドウサイズ変更を検知してイベントを発火させるためのmixin
# Main系のコンポーネント複数で利用している
export default
  data: ->
    # ウィンドウ全体のサイズ
    windowWidthSize: window.outerWidth
    documentWidthSize: document.documentElement.clientWidth
  created: ->
    # ウィンドウのリサイズ時にイベントを発火させるためのリスナーを登録
    window.addEventListener('resize', @handleResize, false)
  beforeDestroy: ->
    # 登録したイベントリスナーを削除
    window.removeEventListener('resize', @handleResize)
  computed:
    width830OrMore: -> @windowWidthSize > 830
    documentWidth750OrMore: -> @documentWidthSize > 750
    documentWidth593OrMore: -> @documentWidthSize > 593
  methods:
    # ウィンドウのリサイズ時にウィンドウサイズを取得しなおす
    handleResize: ->
      @windowWidthSize = window.outerWidth
      @documentWidthSize = document.documentElement.clientWidth
