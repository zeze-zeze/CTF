# coding=utf-8
import base64

c='Nm@rmLsBy{Nm5u-K{iZKPgPMzS2I*lPc%_SMOjQ#O;uV{MM*?PPFhk|Hd;hVPFhq{HaAH<'

print base64.b32decode(base64.b85decode(c))
