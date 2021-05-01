.class final Lcom/umeng/analytics/MobclickAgentJSInterface$a;
.super Landroid/webkit/WebChromeClient;
.source "MobclickAgentJSInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/MobclickAgentJSInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field a:Landroid/webkit/WebChromeClient;

.field final synthetic b:Lcom/umeng/analytics/MobclickAgentJSInterface;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/umeng/analytics/MobclickAgentJSInterface;Landroid/webkit/WebChromeClient;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->b:Lcom/umeng/analytics/MobclickAgentJSInterface;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;

    const-string p1, "ekv"

    .line 52
    iput-object p1, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->c:Ljava/lang/String;

    const-string p1, "event"

    .line 53
    iput-object p1, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->d:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 56
    new-instance p1, Landroid/webkit/WebChromeClient;

    invoke-direct {p1}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;

    goto :goto_0

    .line 58
    :cond_0
    iput-object p2, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;

    :goto_0
    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 7

    const-string v0, "ekv"

    .line 67
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string p2, "id"

    .line 73
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    const-string p2, "duration"

    .line 75
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string p2, "duration"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 78
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p3

    .line 81
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 82
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 85
    :cond_1
    invoke-static {}, Lcom/umeng/analytics/MobclickAgent;->getAgent()Lcom/umeng/analytics/d;

    move-result-object v0

    iget-object p1, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->b:Lcom/umeng/analytics/MobclickAgentJSInterface;

    invoke-static {p1}, Lcom/umeng/analytics/MobclickAgentJSInterface;->a(Lcom/umeng/analytics/MobclickAgentJSInterface;)Landroid/content/Context;

    move-result-object v1

    int-to-long v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_2
    const-string v0, "event"

    .line 90
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "label"

    .line 93
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    .line 95
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p2, 0x0

    :cond_3
    move-object v3, p2

    .line 99
    invoke-static {}, Lcom/umeng/analytics/MobclickAgent;->getAgent()Lcom/umeng/analytics/d;

    move-result-object v0

    iget-object p2, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->b:Lcom/umeng/analytics/MobclickAgentJSInterface;

    invoke-static {p2}, Lcom/umeng/analytics/MobclickAgentJSInterface;->a(Lcom/umeng/analytics/MobclickAgentJSInterface;)Landroid/content/Context;

    move-result-object v1

    const-string p2, "tag"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p2, "duration"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v4, p1

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    :catch_1
    :goto_2
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->confirm()V

    const/4 p1, 0x1

    return p1

    .line 102
    :cond_4
    iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    return-void
.end method
