.class Lcom/mrpoid/app/HelpActivity$1;
.super Landroid/webkit/WebChromeClient;
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

    .line 32
    iput-object p1, p0, Lcom/mrpoid/app/HelpActivity$1;->this$0:Lcom/mrpoid/app/HelpActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/mrpoid/app/HelpActivity$1;->this$0:Lcom/mrpoid/app/HelpActivity;

    invoke-virtual {p1, p2}, Lcom/mrpoid/app/HelpActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
