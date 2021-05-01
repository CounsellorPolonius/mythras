.class public final Lcom/mrpoid/Res;
.super Ljava/lang/Object;
.source "Res.java"


# static fields
.field public static final ABOUT_URI_ASSET:Landroid/net/Uri;

.field public static final CHANGELOG_URI:Landroid/net/Uri;

.field public static final CHANGELOG_URI_ASSET:Landroid/net/Uri;

.field public static final FAQ_URI:Landroid/net/Uri;

.field public static final FAQ_URI_ASSET:Landroid/net/Uri;

.field public static final HELP_URI_ASSET:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://mrpej.com/YichouAngle/mrpoid/faq.html"

    .line 12
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mrpoid/Res;->FAQ_URI:Landroid/net/Uri;

    const-string v0, "http://mrpej.com/YichouAngle/mrpoid/changelog.html"

    .line 13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mrpoid/Res;->CHANGELOG_URI:Landroid/net/Uri;

    const-string v0, "file:///android_asset/faq.html"

    .line 15
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mrpoid/Res;->FAQ_URI_ASSET:Landroid/net/Uri;

    const-string v0, "file:///android_asset/changelog.html"

    .line 16
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mrpoid/Res;->CHANGELOG_URI_ASSET:Landroid/net/Uri;

    const-string v0, "file:///android_asset/about.html"

    .line 17
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mrpoid/Res;->ABOUT_URI_ASSET:Landroid/net/Uri;

    const-string v0, "file:///android_asset/help.html"

    .line 18
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mrpoid/Res;->HELP_URI_ASSET:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
