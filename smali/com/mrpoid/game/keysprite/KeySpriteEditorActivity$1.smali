.class Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$1;
.super Ljava/lang/Object;
.source "KeySpriteEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$1;->this$0:Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;

    iput-object p2, p0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$1;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 126
    iget-object p1, p0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 130
    :cond_0
    iget-object p2, p0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$1;->this$0:Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;

    invoke-static {p2, p1}, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->access$000(Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;Ljava/lang/String;)V

    return-void
.end method
