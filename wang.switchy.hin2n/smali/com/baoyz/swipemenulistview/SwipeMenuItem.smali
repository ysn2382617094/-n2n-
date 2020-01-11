.class public Lcom/baoyz/swipemenulistview/SwipeMenuItem;
.super Ljava/lang/Object;
.source "SwipeMenuItem.java"


# instance fields
.field private background:Landroid/graphics/drawable/Drawable;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private id:I

.field private mContext:Landroid/content/Context;

.field private title:Ljava/lang/String;

.field private titleColor:I

.field private titleSize:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->background:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->id:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleColor()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->titleColor:I

    return v0
.end method

.method public getTitleSize()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->titleSize:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->width:I

    return v0
.end method

.method public setBackground(I)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->background:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->background:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->id:I

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->title:Ljava/lang/String;

    return-void
.end method

.method public setTitleColor(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->titleColor:I

    return-void
.end method

.method public setTitleSize(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->titleSize:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->width:I

    return-void
.end method
