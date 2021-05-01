.class public Lcom/mrpoid/mrplist/view/BrowserFragment;
.super Landroid/support/v4/app/Fragment;
.source "BrowserFragment.java"

# interfaces
.implements Landroid/webkit/DownloadListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;,
        Lcom/mrpoid/mrplist/view/BrowserFragment$MarkEditDialogFragment;,
        Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;
    }
.end annotation


# static fields
.field private static final FILECHOOSER_RESULTCODE:I = 0x1

.field static final HOME_PAGE_URL:Ljava/lang/String; = "http://edroid.cn/app/"

.field static final ID_COPY:I = 0x3ea

.field static final ID_DOWNLOAD:I = 0x3ec

.field static final ID_MARK:I = 0x3e9

.field static final ID_SHARE:I = 0x3eb

.field static final MARK_MENU:[Ljava/lang/String;

.field static final START_PAGE_URL:Ljava/lang/String; = "http://edroid.cn/app/"


# instance fields
.field private ab:Landroid/support/v7/app/ActionBar;

.field mBar:Landroid/widget/ProgressBar;

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;

.field mWebView:Landroid/webkit/WebView;

.field final markList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field markListView:Landroid/widget/ListView;

.field markWindow:Landroid/widget/PopupWindow;

.field final webMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 86
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "+\u6536\u85cf\u8be5\u9875"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "+\u65b0\u5efa\u4e66\u7b7e"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/mrpoid/mrplist/view/BrowserFragment;->MARK_MENU:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->markList:Ljava/util/List;

    .line 230
    new-instance v0, Lcom/mrpoid/mrplist/view/BrowserFragment$3;

    invoke-direct {v0, p0}, Lcom/mrpoid/mrplist/view/BrowserFragment$3;-><init>(Lcom/mrpoid/mrplist/view/BrowserFragment;)V

    iput-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->webMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mrpoid/mrplist/view/BrowserFragment;)Landroid/support/v7/app/ActionBar;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->ab:Landroid/support/v7/app/ActionBar;

    return-object p0
.end method

.method static synthetic access$102(Lcom/mrpoid/mrplist/view/BrowserFragment;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$400(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-static {p0, p1}, Lcom/mrpoid/mrplist/view/BrowserFragment;->handleFile(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private checkCache()V
    .locals 4

    .line 389
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "popu_item_page"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 390
    invoke-static {}, Lcom/edroid/common/utils/TimeUtils;->getDayOfYear()I

    move-result v1

    const-string v2, "day"

    add-int/lit8 v3, v1, -0x1

    .line 391
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "webview.db"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->deleteDatabase(Ljava/lang/String;)Z

    .line 395
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "webviewCache.db"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->deleteDatabase(Ljava/lang/String;)Z

    .line 397
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "day"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private static handleFile(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 3

    .line 432
    new-instance v0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;

    invoke-direct {v0}, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;-><init>()V

    .line 433
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "path"

    .line 434
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-virtual {v0, v1}, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->setArguments(Landroid/os/Bundle;)V

    const-string p1, "fileDialog"

    .line 436
    invoke-virtual {v0, p0, p1}, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private initMarkMenu()V
    .locals 5

    .line 138
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0057

    const/4 v2, 0x0

    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 141
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 142
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 144
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 146
    new-instance v4, Landroid/widget/PopupWindow;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v1, v1, v2

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v4, v0, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v4, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->markWindow:Landroid/widget/PopupWindow;

    .line 148
    iget-object v1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->markWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget-object v1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->markWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 150
    iget-object v1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->markWindow:Landroid/widget/PopupWindow;

    const v3, 0x1030002

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 151
    iget-object v1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->markWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V

    .line 152
    iget-object v1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->markWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 153
    iget-object v1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->markWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const v1, 0x7f090074

    .line 155
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->markListView:Landroid/widget/ListView;

    .line 156
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->markListView:Landroid/widget/ListView;

    new-instance v1, Lcom/mrpoid/mrplist/view/BrowserFragment$1;

    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->markList:Ljava/util/List;

    const v4, 0x1090003

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/mrpoid/mrplist/view/BrowserFragment$1;-><init>(Lcom/mrpoid/mrplist/view/BrowserFragment;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 167
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->markListView:Landroid/widget/ListView;

    new-instance v1, Lcom/mrpoid/mrplist/view/BrowserFragment$2;

    invoke-direct {v1, p0}, Lcom/mrpoid/mrplist/view/BrowserFragment$2;-><init>(Lcom/mrpoid/mrplist/view/BrowserFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private initWebView()V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/mrpoid/mrplist/view/BrowserFragment$4;

    invoke-direct {v1, p0}, Lcom/mrpoid/mrplist/view/BrowserFragment$4;-><init>(Lcom/mrpoid/mrplist/view/BrowserFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 324
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/mrpoid/mrplist/view/BrowserFragment$5;

    invoke-direct {v1, p0}, Lcom/mrpoid/mrplist/view/BrowserFragment$5;-><init>(Lcom/mrpoid/mrplist/view/BrowserFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 335
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/mrpoid/mrplist/view/BrowserFragment$6;

    invoke-direct {v1, p0}, Lcom/mrpoid/mrplist/view/BrowserFragment$6;-><init>(Lcom/mrpoid/mrplist/view/BrowserFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 381
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method static matchEnd(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/16 v0, 0x2e

    .line 423
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 425
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 426
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private showMarkMenu()V
    .locals 7

    .line 187
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "bookmarks"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 189
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->markList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 192
    sget-object v1, Lcom/mrpoid/mrplist/view/BrowserFragment;->MARK_MENU:[Ljava/lang/String;

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 193
    iget-object v5, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->markList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 196
    iget-object v2, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->markList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->markListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 201
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 203
    iget-object v1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->markWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->mWebView:Landroid/webkit/WebView;

    const/16 v3, 0x55

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float v0, v0, v4

    .line 204
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 205
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700a1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    .line 203
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private startDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 440
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 441
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 443
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/edroid/common/utils/Md5Utils;->md516([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 445
    new-instance p1, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;

    invoke-direct {p1}, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;-><init>()V

    .line 446
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "downloadDialog"

    invoke-virtual {p1, v0, v2}, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->start(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :cond_0
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mrpoid/mrplist/view/BrowserFragment;->handleFile(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public editMarket(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 461
    new-instance v0, Lcom/mrpoid/mrplist/view/BrowserFragment$MarkEditDialogFragment;

    invoke-direct {v0}, Lcom/mrpoid/mrplist/view/BrowserFragment$MarkEditDialogFragment;-><init>()V

    .line 463
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    .line 464
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "url"

    .line 465
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-virtual {v0, v1}, Lcom/mrpoid/mrplist/view/BrowserFragment$MarkEditDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 468
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string p2, "markDialog"

    invoke-virtual {v0, p1, p2}, Lcom/mrpoid/mrplist/view/BrowserFragment$MarkEditDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 403
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 405
    invoke-virtual {p0, p1}, Lcom/mrpoid/mrplist/view/BrowserFragment;->setHasOptionsMenu(Z)V

    .line 406
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->ab:Landroid/support/v7/app/ActionBar;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 257
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    if-eqz p3, :cond_2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    goto :goto_1

    :cond_2
    :goto_0
    move-object p2, p1

    .line 261
    :goto_1
    iget-object p3, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {p3, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 262
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->mUploadMessage:Landroid/webkit/ValueCallback;

    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 751
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 108
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "url"

    .line 111
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "url"

    .line 112
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->mUrl:Ljava/lang/String;

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->mUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/edroid/common/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "http://edroid.cn/app/"

    .line 114
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->mUrl:Ljava/lang/String;

    .line 116
    :cond_1
    invoke-direct {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment;->initMarkMenu()V

    .line 118
    invoke-direct {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment;->checkCache()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 103
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f0b003a

    const/4 p3, 0x0

    .line 222
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 223
    invoke-virtual {p0, p1}, Lcom/mrpoid/mrplist/view/BrowserFragment;->onViewCreate(Landroid/view/View;)V

    return-object p1
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 733
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p5, "------- dl --------"

    invoke-virtual {p2, p5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 734
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 735
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 736
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p2, "application/vnd.android.package-archive"

    .line 739
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "apk"

    .line 740
    invoke-direct {p0, p2, p1}, Lcom/mrpoid/mrplist/view/BrowserFragment;->startDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "mrp"

    .line 741
    invoke-static {p1, p2}, Lcom/mrpoid/mrplist/view/BrowserFragment;->matchEnd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "mrp"

    .line 742
    invoke-direct {p0, p2, p1}, Lcom/mrpoid/mrplist/view/BrowserFragment;->startDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 744
    :cond_1
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 745
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 744
    invoke-virtual {p0, p1}, Lcom/mrpoid/mrplist/view/BrowserFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 210
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    const/4 p1, 0x1

    return p1

    .line 216
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onViewCreate(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f09012a

    .line 410
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->mWebView:Landroid/webkit/WebView;

    const v0, 0x7f0900bc

    .line 411
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->mBar:Landroid/widget/ProgressBar;

    .line 413
    invoke-direct {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment;->initWebView()V

    .line 415
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 417
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 418
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
