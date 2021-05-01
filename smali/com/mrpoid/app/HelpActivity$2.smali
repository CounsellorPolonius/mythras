.class Lcom/mrpoid/app/HelpActivity$2;
.super Landroid/webkit/WebViewClient;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/app/HelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/app/HelpActivity;


# direct methods
.method constructor <init>(Lcom/mrpoid/app/HelpActivity;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/mrpoid/app/HelpActivity$2;->this$0:Lcom/mrpoid/app/HelpActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 49
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
