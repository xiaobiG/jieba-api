from fastapi import FastAPI
from pydantic import BaseModel
import jieba

class SegmentItem(BaseModel):
    text: str

app = FastAPI()

@app.post("/segment")
async def segment(item: SegmentItem):
    seg_list = jieba.cut(item.text, cut_all=False)
    return {"segments": list(seg_list)}
