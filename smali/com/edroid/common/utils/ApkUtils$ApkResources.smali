.class public final Lcom/edroid/common/utils/ApkUtils$ApkResources;
.super Landroid/content/res/Resources;
.source "ApkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/edroid/common/utils/ApkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApkResources"
.end annotation


# instance fields
.field private appIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private appLabel:Ljava/lang/String;

.field private asset:Landroid/content/res/AssetManager;

.field private context:Landroid/content/Context;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 2

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 140
    iput-object p2, p0, Lcom/edroid/common/utils/ApkUtils$ApkResources;->asset:Landroid/content/res/AssetManager;

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/edroid/common/utils/ApkUtils$ApkResources;->context:Landroid/content/Context;

    .line 142
    iput-object p3, p0, Lcom/edroid/common/utils/ApkUtils$ApkResources;->path:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Lcom/edroid/common/utils/ApkUtils$ApkResources;->load()V

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/edroid/common/utils/ApkUtils$ApkResources;->appIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/edroid/common/utils/ApkUtils$ApkResources;->appLabel:Ljava/lang/String;

    return-object v0
.end method

.method public load()V
    .locals 3

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/edroid/common/utils/ApkUtils$ApkResources;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/edroid/common/utils/ApkUtils$ApkResources;->path:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/edroid/common/utils/ApkUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 154
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p0, v1}, Lcom/edroid/common/utils/ApkUtils$ApkResources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/edroid/common/utils/ApkUtils$ApkResources;->appIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 155
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p0, v0}, Lcom/edroid/common/utils/ApkUtils$ApkResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/edroid/common/utils/ApkUtils$ApkResources;->appLabel:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public recyle()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/edroid/common/utils/ApkUtils$ApkResources;->asset:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->close()V

    .line 171
    iget-object v0, p0, Lcom/edroid/common/utils/ApkUtils$ApkResources;->appIcon:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/edroid/common/utils/ApkUtils$ApkResources;->appIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method
