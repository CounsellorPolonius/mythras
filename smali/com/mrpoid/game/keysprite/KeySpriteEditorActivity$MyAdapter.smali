.class Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "KeySpriteEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$MyAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;


# direct methods
.method public constructor <init>(Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$MyAdapter;->this$0:Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 170
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$MyAdapter;->this$0:Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;

    iget-object v0, v0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->mKeySprite:Lcom/mrpoid/game/keysprite/KeySprite;

    invoke-interface {v0}, Lcom/mrpoid/game/keysprite/KeySprite;->count()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$MyAdapter;->this$0:Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;

    iget-object v0, v0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->mKeySprite:Lcom/mrpoid/game/keysprite/KeySprite;

    invoke-interface {v0, p1}, Lcom/mrpoid/game/keysprite/KeySprite;->get(I)Lcom/mrpoid/game/keysprite/Sprite;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$MyAdapter;->this$0:Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;

    iget-object v0, v0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->mKeySprite:Lcom/mrpoid/game/keysprite/KeySprite;

    invoke-interface {v0, p1}, Lcom/mrpoid/game/keysprite/KeySprite;->get(I)Lcom/mrpoid/game/keysprite/Sprite;

    move-result-object p1

    iget p1, p1, Lcom/mrpoid/game/keysprite/Sprite;->value:I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 193
    iget-object p2, p0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/mrpoid/R$layout;->key_sprite_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 194
    new-instance p3, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$MyAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$MyAdapter$ViewHolder;-><init>(Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$MyAdapter;)V

    .line 195
    sget v0, Lcom/mrpoid/R$id;->textView1:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$MyAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    .line 196
    sget v0, Lcom/mrpoid/R$id;->ibtn_remove:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p3, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$MyAdapter$ViewHolder;->mButton:Landroid/widget/ImageButton;

    .line 197
    iget-object v0, p3, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$MyAdapter$ViewHolder;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$MyAdapter$ViewHolder;

    .line 204
    :goto_0
    iget-object v0, p0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$MyAdapter;->this$0:Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;

    iget-object v0, v0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->mKeySprite:Lcom/mrpoid/game/keysprite/KeySprite;

    invoke-interface {v0, p1}, Lcom/mrpoid/game/keysprite/KeySprite;->get(I)Lcom/mrpoid/game/keysprite/Sprite;

    move-result-object v0

    .line 206
    iget-object v1, p3, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$MyAdapter$ViewHolder;->mButton:Landroid/widget/ImageButton;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 207
    iget-object p3, p3, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$MyAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mrpoid/game/keysprite/Sprite;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$MyAdapter;->this$0:Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;

    iget-object v0, v0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->mKeySprite:Lcom/mrpoid/game/keysprite/KeySprite;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/mrpoid/game/keysprite/KeySprite;->remove(I)V

    .line 220
    invoke-virtual {p0}, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$MyAdapter;->notifyDataSetChanged()V

    return-void
.end method
